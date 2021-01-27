`timescale 1ns / 1ps

//对灰度值进行中值滤波
module median_filter(
	input clk,//时钟
	input rst,//复位按钮
	input [7:0] grey_data,//灰度值
	input [5:0] row,//当前像素点行数
	input [5:0] col,//当前像素点列数
	input median_ena,//输入有效标志
	output [7:0] median_filter_data,//中值滤波值
	output median_vld//输出有效标志
    );
	//变量
	wire [7:0] mp11,mp12,mp13;
	wire [7:0] mp21,mp22,mp23;
	wire [7:0] mp31,mp32,mp33;//3x3算子的各个值
	wire matrix_match_ena;//比较有效标志
	wire [7:0] middle_data;//中值
	wire [7:0] max [2:0];//每行的最大值
	wire [7:0] min [2:0];//每行的最小值
	wire [7:0] mid [2:0];//每行的中间值
	wire [7:0] maxMin, minMax, midMid;//第二步的结果值
	//流程
	//更新并读取3x3算子
	window_3x3 window(
		.clk(clk),
		.rst(rst),
		.din(grey_data),
		.window_ena(median_ena),
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
	//对读取的阵列作中值滤波运算
	//算法详见各步注释
	//step1:每一行排序 1clk
	compare U_row1(
		.clk(clk),
		.rst(rst),
		.data1(mp11),
		.data2(mp12),
		.data3(mp13),
		.min(min[0]),
		.middle(mid[0]),
		.max(max[0])
		);
	compare U_row2(
		.clk(clk),
		.rst(rst),
		.data1(mp21),
		.data2(mp22),
		.data3(mp23),
		.min(min[1]),
		.middle(mid[1]),
		.max(max[1])
		);
	compare U_row3(
		.clk(clk),
		.rst(rst),
		.data1(mp31),
		.data2(mp32),
		.data3(mp33),
		.min(min[2]),
		.middle(mid[2]),
		.max(max[2])
		);
	//step2:小中取大 大中取小，中中取中 1clk
	compare U_col1(
		.clk(clk),
		.rst(rst),
		.data1(min[0]),
		.data2(min[1]),
		.data3(min[2]),
		.min(),
		.middle(),
		.max(maxMin)
		);
	compare U_col2(
		.clk(clk),
		.rst(rst),
		.data1(max[0]),
		.data2(max[1]),
		.data3(max[2]),
		.min(minMax),
		.middle(),
		.max()
		);
	compare U_col3(
		.clk(clk),
		.rst(rst),
		.data1(mid[0]),
		.data2(mid[1]),
		.data3(mid[2]),
		.min(),
		.middle(midMid),
		.max()
		);
	//step3:再对三个最值取中值 1clk
	compare U_col0(
		.clk(clk),
		.rst(rst),
		.data1(minMax),
		.data2(maxMin),
		.data3(midMid),
		.min(),
		.middle(middle_data),
		.max()
		);
	//中值滤波共消耗3clk
	delay_nclk #(.n(3)) delay_3clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(matrix_match_ena),
		.delay_vld(median_vld)
	);
	//由于当前像素点在3x3算子的右下角，因此上两行及左两列的值无效
	assign median_filter_data = (row < 2 || col < 2)? grey_data: middle_data;
endmodule
