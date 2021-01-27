`timescale 1ns / 1ps

//将像素点的rgb值转为灰度值
module rgb2grey(
	input clk,//时钟
	input rst,//复位按钮
	input [7:0] R0,//r值
	input [7:0] G0,//g值
	input [7:0] B0,//b值
	input rgb2grey_ena,//输入有效标志
	output [7:0] grey_data,//灰度值
	output rgb2grey_vld//输出有效标志
    );
	//中间变量
	reg [15:0] Grey;
    reg [15:0] R, G, B;
	//流程
    //转化公式: Grey = (R*38 + G*75 + B*15) >> 7
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
	//右移用取高位代替
	assign grey_data = Grey[15:8];
	//计算过程消耗2clk
	delay_nclk #(.n(2)) delay_2clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(rgb2grey_ena),
		.delay_vld(rgb2grey_vld)
	);
endmodule
