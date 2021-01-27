`timescale 1ns / 1ps

//处理当前像素点，得到Sobel算子值
module pixel_process(
	input clk,//时钟
	input rst,//复位按钮
	input [23:0] rgb_data,//rgb值
	input [7:0] row,//当前像素行数
	input [7:0] col,//当前像素列数
	input process_ena,//输入有效标志
	output sobel_detect_data,//Sobel算子值
	output reg is_player,//是否是小人标志点
	output process_vld//处理有效标志
    );
	//参数
	parameter PLAYER_R = 8'd54;//小人r值参考
	parameter PLAYER_G = 8'd60;//小人g值参考
	parameter PLAYER_B = 8'd102;//小人b值参考
	//变量
	wire [7:0] R;//r值
	wire [7:0] G;//g值
	wire [7:0] B;//b值
	wire [7:0] r_err_abs;//r值与参考值之差的绝对值
	wire [7:0] g_err_abs;//g值与参考值之差的绝对值
	wire [7:0] b_err_abs;//b值与参考值之差的绝对值
	wire grey_vld;//转灰度有效标志
	wire median_vld;//中值滤波有效标志
	wire [7:0]grey_data;//灰度像素值
	wire [7:0]median_filter_data;//滤波后的像素值
	//流程
	assign R = rgb_data[23:16];
	assign G = rgb_data[15:8];
	assign B = rgb_data[7:0];
	//判断该像素点是否为小人标志点
	assign r_err_abs = R - PLAYER_R < 0? PLAYER_R - R: R - PLAYER_R;
	assign g_err_abs = G - PLAYER_G < 0? PLAYER_G - G: G - PLAYER_G;
	assign b_err_abs = B - PLAYER_B < 0? PLAYER_B - B: B - PLAYER_B;
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            is_player <= 0;
		//如果三个绝对值同时<5，就认为是
        else if(r_err_abs < 5 && g_err_abs < 5 && b_err_abs < 5)
            is_player <= 1;
        else
            is_player <= 0;
    end
	//转为灰度图
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
	//中值滤波
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
	//sobel边缘检测
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
