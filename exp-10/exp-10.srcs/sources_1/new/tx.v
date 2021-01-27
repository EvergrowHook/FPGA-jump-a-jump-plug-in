`timescale 1ns / 1ps

//bps = 115200
//clk = 100mhz
//div = clk / bps = 868

//ͨ��Ӳ��tx�ߴ���1byte����
//�����ʽ: 1λ��ʼλ(0) + 8λ����λ + 1λֹͣλ(1)
module tx(
    input clk,//ʱ��
    input rst,//��λ��ť
    input [7:0] tx_data, //����������
    input tx_ena, //������Ч��־
    output reg tx, //Ӳ��tx��
    output reg tx_vld//�����Ч��־
    );
    //����
    parameter DIV_CNT = 10'd867; //tx����
    parameter TX_CNT = 4'h9; //���������λ��
    parameter C_IDLE = 1'b0; //����״̬
    parameter C_TX = 1'b1; //����״̬
    //���� 
    reg curr_state;//��̬
    reg next_state;//��̬
    reg [9:0] div_cnt;//��ʱ����
    reg [4:0] tx_cnt;//�Ѵ������λ��
    reg [7:0] tx_reg;//����������
    //����
    //����״̬����һ����
    always @(*)
    begin
        case(curr_state)
            C_IDLE:
                if(tx_ena == 1'b1)//����ʹ�ܣ���ʼ����
                    next_state <= C_TX;
                else
                    next_state <= C_IDLE;
            C_TX:
                if((div_cnt == DIV_CNT) && (tx_cnt >= TX_CNT)) //�������
                    next_state <= C_IDLE;
                else
                    next_state <= C_TX;
        endcase
    end
    //����״̬���ڶ�����
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            curr_state <= C_IDLE;
        else
            curr_state <= next_state;
    end
    //����״̬����������
    //���´�����Ч��־
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_vld <= 1'b0;
        else if(curr_state == C_TX && next_state == C_IDLE)
            tx_vld <= 1'b1;
        else
            tx_vld <= 1'b0;
    end
    //���¼�ʱ��
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            div_cnt <= 10'h0;
        else if(curr_state == C_TX)
        begin
            if(div_cnt >= DIV_CNT)
                div_cnt <= 10'h0;
            else
                div_cnt <= div_cnt + 10'h1;
        end
        else
            div_cnt <= 10'h0;
    end
    //�����Ѵ���λ��
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_cnt <= 4'h0;
        else if(curr_state == C_TX)
        begin
            if(div_cnt == DIV_CNT)
                tx_cnt <= tx_cnt + 1'b1;
        end
        else
            tx_cnt <= 4'h0;
    end
    //���´������byte
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_reg <= 8'b0;
        else if((curr_state == C_IDLE) && (tx_ena == 1'b1))
            tx_reg <= tx_data;
    end
    //���µ�ǰ��������λ
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx <= 1'b1;
        else if(curr_state == C_IDLE)
            tx <= 1'b1;
        else if(div_cnt == 10'h0)
        begin
            case(tx_cnt)
                4'h0: tx <= 1'b0;
                4'h1: tx <= tx_reg[0];
                4'h2: tx <= tx_reg[1];
                4'h3: tx <= tx_reg[2];
                4'h4: tx <= tx_reg[3];
                4'h5: tx <= tx_reg[4];
                4'h6: tx <= tx_reg[5];
                4'h7: tx <= tx_reg[6];
                4'h8: tx <= tx_reg[7];
                4'h9: tx <= 1'b1;
            endcase
        end
    end
endmodule
