`timescale 1ns / 1ps

//更新3x3算子
module window_3x3(
	input clk,//时钟
	input rst,//复位按钮
	input [7:0] din,//新数据
	input window_ena,//输入有效标志
	output reg[7:0] data00,
	output reg[7:0] data01,
	output reg[7:0] data02,
	output reg[7:0] data10,
	output reg[7:0] data11,
	output reg[7:0] data12,
	output reg[7:0] data20,
	output reg[7:0] data21,
	output reg[7:0] data22,//3x3算子的各数据
	output window_vld//输出有效标志
	);
	//变量
	wire [7:0] row0;//最上一行的输入值
	wire [7:0] row1;//中间行的输入值
	reg  [7:0] row2;//最下一行的输入值
	wire read_matrix_ena;//读取算子有效标志
	//流程
	//更新新进入3x3算子的数据
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			row2 <= 0;
		else if(window_ena)
			row2 <= din;
		else
			row2 <= row2;
	end
	//最下行的新数据进入最下行的shift ram
	shift_ram shift_ram2 (
		.D(row2),
		.CLK(clk),
		.CE(window_ena),
		.SCLR(rst),
		.Q(row1)
	);
	//中间行的新数据进入中间行的shift ram
	shift_ram shift_ram1 (
		.D(row1),
		.CLK(clk),
		.CE(window_ena),
		.SCLR(rst),
		.Q(row0)
	);
	//以上过程消耗1clk
	delay_nclk #(.n(1)) delay_1clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(window_ena),
		.delay_vld(read_matrix_ena)
	);
	//根据同步信号读取3X3阵列
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			{data00, data01, data02} <= 0;
			{data10, data11, data12} <= 0;
			{data20, data21, data22} <= 0;
		end
		else if(read_matrix_ena)
		begin
			{data00, data01, data02} <= {data01, data02, row0};
			{data10, data11, data12} <= {data11, data12, row1};
			{data20, data21, data22} <= {data21, data22, row2};
		end
	end
	//读取过程消耗1clk
	delay_nclk #(.n(1)) delay_1clk_2 (
		.clk(clk),
		.rst(rst),
		.delay_ena(read_matrix_ena),
		.delay_vld(window_vld)
	);
endmodule
