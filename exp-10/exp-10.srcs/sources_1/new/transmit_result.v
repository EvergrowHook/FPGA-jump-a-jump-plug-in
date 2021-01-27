`timescale 1ns / 1ps

//通过tx传输n字节数据
module transmit_result #(parameter n = 1) (
	input clk,//时钟
	input rst,//复位按钮
	input [n * 8 - 1: 0] data,//待传输数据
	input transmit_ena,//输入有效标志
	output tx,//硬件tx线
	output reg transmit_vld//输出有效标志
    );
    //变量
    wire tx_vld;//单byte传输完成标志
    reg [n - 1: 0] byte_cnt;//已传输字节数
    reg [7:0] tx_data_r;
    wire [7:0] tx_data;//当前待传输数据
    wire trans_ena;//继续传输标志
    //流程
    //更新已传输字节数
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            byte_cnt <= 0;
        else
        begin
            if(byte_cnt == n)
                byte_cnt <= 0;
            else if(tx_vld)
                byte_cnt <= byte_cnt + 1;
            else
                byte_cnt <= byte_cnt;
        end
    end
    //更新当前待传输数据（暂时只能使用逐个判断的方式，最高支持6byte）
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_data_r <= 0;
        else
        begin
            if(byte_cnt == 0)
                tx_data_r <= data[7:0];
            else if(n > 1 && byte_cnt == 1)
                tx_data_r <= data[15:8];
            else if(n > 2 && byte_cnt == 2)
                tx_data_r <= data[23:16];
            else if(n > 3 && byte_cnt == 3)
                tx_data_r <= data[31:24];
            else if(n > 4 && byte_cnt == 4)
                tx_data_r <= data[39:32];
            else if(n > 5 && byte_cnt == 5)
                tx_data_r <= data[47:40];
        end
    end
    assign tx_data = tx_data_r;
    //更新传输使能
    assign trans_ena = transmit_ena || (tx_vld && byte_cnt < n - 1);
    //以上更新过程消耗2clk
    delay_nclk #(.n(2)) delay_2clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(trans_ena),
		.delay_vld(tx_ena)
	);
    //通过tx线传输1byte
    tx tx_inst(
        .clk(clk),
        .rst(rst),
        .tx_data(tx_data),
        .tx_ena(tx_ena),
        .tx(tx),
        .tx_vld(tx_vld)
    );
    //更新全部传输完成标志
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            transmit_vld <= 0;
        else if(byte_cnt == n)
            transmit_vld <= 1;
        else
            transmit_vld <= 0;
    end
endmodule
