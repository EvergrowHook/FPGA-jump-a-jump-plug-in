`timescale 1ns / 1ps

//���뵱ǰ���ص��rgbֵ
module read_pixel(
    input clk,//ʱ��
    input rst,//��λ��ť
    input rx,//Ӳ��rx��
    output [23:0] rgb_data,//rgbֵ
    output reg read_vld//������Ч��־
    );
    //����
    wire rx_vld;//rx����1byte��Ч��־
    wire [7:0] rx_data;//rx���������
    reg [1:0] byte_cnt;//�����byte��
    reg [7:0] r_data;//rֵ
    reg [7:0] g_data;//gֵ
    reg [7:0] b_data;//bֵ
    //��rx�߽�������
    rx rx_inst(
        .clk (clk),
        .rst (rst),
        .rx (rx),
        .rx_data (rx_data),
        .rx_vld (rx_vld)
    );
    //�����Ѷ����byte����
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
    //�����Ѷ����byte������rgb��ֵ
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
    //��������3byte���������Ч
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            read_vld <= 0;
        else if(byte_cnt == 3)
            read_vld <= 1;
        else
            read_vld <= 0;
    end
    //�ϲ�rgb����
    assign rgb_data = {r_data, g_data, b_data};
endmodule
