`timescale 1ns / 1ps

//使输出有效标志比输入有效标志晚n clk有效
module delay_nclk #(parameter n = 1) (
	input clk,//时钟
	input rst,//复位按钮
    input delay_ena,//输入有效标志
    output delay_vld//输出有效标志
    );
	//变量
	reg [n - 1:0] ena_r;//移位寄存器
	//流程
	//更新移位寄存器
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			ena_r <= 0;
		else if(n > 1)
			ena_r <= {ena_r[n - 2:0], delay_ena};
		else
			ena_r <= delay_ena;
	end
	//n clk后输入有效标志从移位寄存器中输出
	assign delay_vld = ena_r[n - 1];
endmodule
