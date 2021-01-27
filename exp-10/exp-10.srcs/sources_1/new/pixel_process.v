`timescale 1ns / 1ps

//����ǰ���ص㣬�õ�Sobel����ֵ
module pixel_process(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [23:0] rgb_data,//rgbֵ
	input [7:0] row,//��ǰ��������
	input [7:0] col,//��ǰ��������
	input process_ena,//������Ч��־
	output sobel_detect_data,//Sobel����ֵ
	output reg is_player,//�Ƿ���С�˱�־��
	output process_vld//������Ч��־
    );
	//����
	parameter PLAYER_R = 8'd54;//С��rֵ�ο�
	parameter PLAYER_G = 8'd60;//С��gֵ�ο�
	parameter PLAYER_B = 8'd102;//С��bֵ�ο�
	//����
	wire [7:0] R;//rֵ
	wire [7:0] G;//gֵ
	wire [7:0] B;//bֵ
	wire [7:0] r_err_abs;//rֵ��ο�ֵ֮��ľ���ֵ
	wire [7:0] g_err_abs;//gֵ��ο�ֵ֮��ľ���ֵ
	wire [7:0] b_err_abs;//bֵ��ο�ֵ֮��ľ���ֵ
	wire grey_vld;//ת�Ҷ���Ч��־
	wire median_vld;//��ֵ�˲���Ч��־
	wire [7:0]grey_data;//�Ҷ�����ֵ
	wire [7:0]median_filter_data;//�˲��������ֵ
	//����
	assign R = rgb_data[23:16];
	assign G = rgb_data[15:8];
	assign B = rgb_data[7:0];
	//�жϸ����ص��Ƿ�ΪС�˱�־��
	assign r_err_abs = R - PLAYER_R < 0? PLAYER_R - R: R - PLAYER_R;
	assign g_err_abs = G - PLAYER_G < 0? PLAYER_G - G: G - PLAYER_G;
	assign b_err_abs = B - PLAYER_B < 0? PLAYER_B - B: B - PLAYER_B;
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            is_player <= 0;
		//�����������ֵͬʱ<5������Ϊ��
        else if(r_err_abs < 5 && g_err_abs < 5 && b_err_abs < 5)
            is_player <= 1;
        else
            is_player <= 0;
    end
	//תΪ�Ҷ�ͼ
	rgb2grey rgb2grey(
		.clk(clk),
		.rst(rst),
		.R0(R),
		.G0(G),
		.B0(B),
		.rgb2grey_ena(process_ena),
		.grey_data(grey_data),
		.rgb2grey_vld(grey_vld)
	);
	//��ֵ�˲�
	median_filter med(
		.clk(clk),
		.rst(rst),
		.grey_data(grey_data),
		.row(row),
		.col(col),
		.median_ena(grey_vld),
		.median_filter_data(median_filter_data),
		.median_vld(median_vld)
	);
	//sobel��Ե���
	sobel_edge_detect sobel_detect(
		.clk(clk),	
		.rst(rst),
		.median_filter_data(median_filter_data),
		.row(row),
		.col(col),
		.sobel_ena(median_vld),
		.sobel_detect_data(sobel_detect_data),
		.sobel_vld(process_vld)
    );
endmodule
