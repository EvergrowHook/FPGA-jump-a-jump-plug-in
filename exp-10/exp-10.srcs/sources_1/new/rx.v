`timescale 1ns / 1ps

//bps = 115200
//clk = 100mhz
//div = clk / bps = 868

//��rx�߶�������
module rx(
    input clk,//ʱ��
    input rst,//��λ��ť
    input rx, //Ӳ��rx��
    output reg [7:0] rx_data, //�����byteֵ
    output reg rx_vld //������Ч��־
    );
    //����
    parameter DIV_CNT = 10'd867;//rx����
    parameter HDIV_CNT = 10'd433;//���rx����
    parameter RX_CNT = 4'h8;//������λ��
    parameter C_IDLE = 1'b0; //����״̬��־
    parameter C_RX = 1'b1; //����״̬��־
    //����
    reg curr_state;//��̬
    reg next_state;//��̬
    reg [9:0] div_cnt;//��ʱ����
    reg [3:0] rx_cnt;//���յ�����λ��
    reg rx_reg_0, rx_reg_1, rx_reg_2, rx_reg_3, rx_reg_4, rx_reg_5, rx_reg_6, rx_reg_7;//һ��byte�ĸ�λ
    wire rx_pulse;//��ǰλ������ɱ�־
    //����״̬����һ����
    always @(*)
    begin
        case(curr_state)
            C_IDLE:
                if(div_cnt == HDIV_CNT)//�ﵽ������
                    next_state = C_RX;
                else//δ�ﵽ������
                    next_state = C_IDLE;
            C_RX:
                if((div_cnt == DIV_CNT) && (rx_cnt >= RX_CNT))//���ս���
                    next_state  = C_IDLE;
                else//����δ����
                    next_state  = C_RX;
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
    //���¼�ʱ��
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            div_cnt <= 10'h0;
        else if(curr_state == C_IDLE)
        begin
            if(rx == 1'b1) //���յ�1��������Ϊ����
                div_cnt <= 10'h0;
            else if(div_cnt < HDIV_CNT) //δ�ﵽ������
                div_cnt <= div_cnt + 10'h1;
            else //���յ�0����ʼλ������ʼ����
                div_cnt <= 10'h0;    
        end
        else if(curr_state == C_RX)
        begin
            if(div_cnt >= DIV_CNT)
                div_cnt <= 10'h0;
            else
                div_cnt <= div_cnt + 10'h1;
        end
    end
    //���½��յ�����λ��
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            rx_cnt <= 4'h0;
        else if(curr_state == C_IDLE)
            rx_cnt <= 4'h0;
        else if((div_cnt == DIV_CNT) && (rx_cnt < 4'hF))
            rx_cnt <= rx_cnt + 1'b1;
    end
    //���µ�ǰλ������ɱ�־
    assign rx_pulse = (curr_state == C_RX) && (div_cnt == DIV_CNT);
    //���ݵ�ǰ���յ�����λ�����¶������ݼĴ���
    always @(posedge clk)
    begin
        if(rx_pulse)
        begin
            case(rx_cnt)
                4'h0: rx_reg_0 <= rx;
                4'h1: rx_reg_1 <= rx;
                4'h2: rx_reg_2 <= rx;
                4'h3: rx_reg_3 <= rx;
                4'h4: rx_reg_4 <= rx;
                4'h5: rx_reg_5 <= rx;
                4'h6: rx_reg_6 <= rx;
                4'h7: rx_reg_7 <= rx;
            endcase
        end
    end
    //���ö�������
    always @(posedge clk or posedge rst)
    begin
        //��λ
        if(rst)
        begin
            rx_vld <= 1'b0;
            rx_data <= 8'h55; //01010101
        end    
        //�������
        else if((curr_state == C_RX) && (next_state == C_IDLE))
        begin
            rx_vld  <= 1'b1;
            rx_data <= {rx_reg_7, rx_reg_6, rx_reg_5, rx_reg_4, rx_reg_3, rx_reg_2, rx_reg_1, rx_reg_0};
        end
        //����δ���
        else
            rx_vld  <= 1'b0;
    end
endmodule
