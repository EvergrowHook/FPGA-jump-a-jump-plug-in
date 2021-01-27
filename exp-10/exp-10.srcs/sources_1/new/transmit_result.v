`timescale 1ns / 1ps

//ͨ��tx����n�ֽ�����
module transmit_result #(parameter n = 1) (
	input clk,//ʱ��
	input rst,//��λ��ť
	input [n * 8 - 1: 0] data,//����������
	input transmit_ena,//������Ч��־
	output tx,//Ӳ��tx��
	output reg transmit_vld//�����Ч��־
    );
    //����
    wire tx_vld;//��byte������ɱ�־
    reg [n - 1: 0] byte_cnt;//�Ѵ����ֽ���
    reg [7:0] tx_data_r;
    wire [7:0] tx_data;//��ǰ����������
    wire trans_ena;//���������־
    //����
    //�����Ѵ����ֽ���
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
    //���µ�ǰ���������ݣ���ʱֻ��ʹ������жϵķ�ʽ�����֧��6byte��
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
    //���´���ʹ��
    assign trans_ena = transmit_ena || (tx_vld && byte_cnt < n - 1);
    //���ϸ��¹�������2clk
    delay_nclk #(.n(2)) delay_2clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(trans_ena),
		.delay_vld(tx_ena)
	);
    //ͨ��tx�ߴ���1byte
    tx tx_inst(
        .clk(clk),
        .rst(rst),
        .tx_data(tx_data),
        .tx_ena(tx_ena),
        .tx(tx),
        .tx_vld(tx_vld)
    );
    //����ȫ��������ɱ�־
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
