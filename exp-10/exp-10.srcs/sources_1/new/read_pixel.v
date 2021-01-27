`timescale 1ns / 1ps

//读入当前像素点的rgb值
module read_pixel(
    input clk,//时钟
    input rst,//复位按钮
    input rx,//硬件rx线
    output [23:0] rgb_data,//rgb值
    output reg read_vld//读入有效标志
    );
    //变量
    wire rx_vld;//rx读入1byte有效标志
    wire [7:0] rx_data;//rx读入的数据
    reg [1:0] byte_cnt;//读入的byte数
    reg [7:0] r_data;//r值
    reg [7:0] g_data;//g值
    reg [7:0] b_data;//b值
    //从rx线接收数据
    rx rx_inst(
        .clk (clk),
        .rst (rst),
        .rx (rx),
        .rx_data (rx_data),
        .rx_vld (rx_vld)
    );
    //更新已读入的byte数量
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            byte_cnt <= 0;
        else
        begin
            if(byte_cnt == 3)
                byte_cnt <= 0;
            else if(rx_vld)
                byte_cnt <= byte_cnt + 1;
            else
                byte_cnt <= byte_cnt;
        end
    end
    //根据已读入的byte数量对rgb赋值
    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            r_data <= 8'b0;
            g_data <= 8'b0;
            b_data <= 8'b0;
        end
        else if(rx_vld)
        begin
            if(byte_cnt == 0)
                r_data <= rx_data;
            else if(byte_cnt == 1)
                g_data <= rx_data;
            else if(byte_cnt == 2)
                b_data <= rx_data;
        end
    end
    //若读入了3byte，则读入有效
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            read_vld <= 0;
        else if(byte_cnt == 3)
            read_vld <= 1;
        else
            read_vld <= 0;
    end
    //合并rgb数据
    assign rgb_data = {r_data, g_data, b_data};
endmodule
