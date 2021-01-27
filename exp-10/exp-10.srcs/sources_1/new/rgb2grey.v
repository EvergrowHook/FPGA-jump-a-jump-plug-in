`timescale 1ns / 1ps

//�����ص��rgbֵתΪ�Ҷ�ֵ
module rgb2grey(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [7:0] R0,//rֵ
	input [7:0] G0,//gֵ
	input [7:0] B0,//bֵ
	input rgb2grey_ena,//������Ч��־
	output [7:0] grey_data,//�Ҷ�ֵ
	output rgb2grey_vld//�����Ч��־
    );
	//�м����
	reg [15:0] Grey;
    reg [15:0] R, G, B;
	//����
    //ת����ʽ: Grey = (R*38 + G*75 + B*15) >> 7
	always @(posedge clk or posedge rst)
	begin
		if(rst)
            R <= 0;
		else
            R <= R0 * 38;
	end
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		    G <= 0;
		else
		    G <= G0 * 75;
	end
	always @(posedge clk or posedge rst)
	begin
		if(rst)
            B <= 0;
		else
		    B <= B0 * 15;
	end
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		    Grey <= 0;
		else
		    Grey <= R + G + B;
	end
	//������ȡ��λ����
	assign grey_data = Grey[15:8];
	//�����������2clk
	delay_nclk #(.n(2)) delay_2clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(rgb2grey_ena),
		.delay_vld(rgb2grey_vld)
	);
endmodule
