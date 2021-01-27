`timescale 1ns / 1ps

//in total delay 5 clocks
//����ֵ�˲�ֵ����Sobel����ֵ
module sobel_edge_detect(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [7:0] median_filter_data,//��ֵ�˲�ֵ
	input [5:0] row,//��ǰ���ص�����
	input [5:0] col,//��ǰ���ص�����
	input sobel_ena,//������Ч��־
	output sobel_detect_data,//Sobel����ֵ
	output sobel_vld//�����Ч��־
    );
	//����
	parameter THRESHOLD = 16'd50;//��ֵ
	//����
	wire [7:0] mp11,mp12,mp13;
	wire [7:0] mp21,mp22,mp23;
	wire [7:0] mp31,mp32,mp33;//3x3���Ӹ���ֵ
	reg [9:0] gx1, gx2, Gx;
	reg [9:0] gy1, gy2, Gy;
	wire [10:0] G;//Sobelֵ�ĸ�����������
	wire matrix_match_ena;//������Ч��־
	wire sobel_data;//Sobelֵ
	//����
	//���²���ȡ3x3����
	window_3x3 window_sobel(
		.clk(clk),
		.rst(rst),
		.din(median_filter_data),
		.window_ena(sobel_ena),
		.data00(mp11),
		.data01(mp12),
		.data02(mp13),
		.data10(mp21),
		.data11(mp22),
		.data12(mp23),
		.data20(mp31),
		.data21(mp32),
		.data22(mp33),
		.window_vld(matrix_match_ena)
	);
	//����Sobelֵ
	//Step1:����һ��3X3���ӵ�Gx��Gy��2clk
	/*
	Gx = | -1  0  +1 |
		 | -2  0  +2 |
		 | -1  0  +1 |
	*/
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			gx1 <= 0;
			gx2 <= 0;
			Gx <= 0;
		end
		else
		begin
			gx1 <= mp13 + (mp23 << 1) + mp33;	// +
			gx2 <= mp11 + (mp21 << 1) + mp31; 	// -
			Gx <= (gx1 >= gx2) ? gx1 - gx2 : gx2 - gx1 ; // |Gx| = |gx1 - gx2| 
		end
	end
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			gy1 <= 0;
			gy2 <= 0;
			Gy <= 0;
		end
		else
		begin
			gy1 <= mp11 + (mp12 << 1) + mp13;	// +
			gy2 <= mp31 + (mp32 << 1) + mp33; 	// -
			Gy <= (gy1 >= gy2) ? gy1 - gy2 : gy2 - gy1 ; // |Gy| = |gy1 - gy2| 
		end
	end
	//Step2:����G=Gx+Gy��0clk
	assign G = Gy + Gx;
	//Step3:��ֵ��, 1clk
	reg sobel_detect_data_r;
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			sobel_detect_data_r <= 1'b0;
		else if (G >= THRESHOLD)
			sobel_detect_data_r <= 1'b1;
		else
			sobel_detect_data_r <= 1'b0;
	end
	assign sobel_data = sobel_detect_data_r;
	//��������������3clk
	delay_nclk #(.n(3)) delay_3clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(matrix_match_ena),
		.delay_vld(sobel_vld)
	);
	//���ڵ�ǰ���ص���3x3���ӵ����½ǣ���������м������е�ֵ��Ч
	assign sobel_detect_data = (row < 2 || col < 2)? 0: sobel_data;
endmodule
