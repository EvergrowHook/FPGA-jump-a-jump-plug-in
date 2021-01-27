`timescale 1ns / 1ps

//bps = 115200
//clk = 100mhz
//div = clk / bps = 868

//从rx线读入数据
module rx(
    input clk,//时钟
    input rst,//复位按钮
    input rx, //硬件rx线
    output reg [7:0] rx_data, //读入的byte值
    output reg rx_vld //读入有效标志
    );
    //参数
    parameter DIV_CNT = 10'd867;//rx周期
    parameter HDIV_CNT = 10'd433;//半个rx周期
    parameter RX_CNT = 4'h8;//最大接收位数
    parameter C_IDLE = 1'b0; //空闲状态标志
    parameter C_RX = 1'b1; //接收状态标志
    //变量
    reg curr_state;//现态
    reg next_state;//次态
    reg [9:0] div_cnt;//计时变量
    reg [3:0] rx_cnt;//接收到的总位数
    reg rx_reg_0, rx_reg_1, rx_reg_2, rx_reg_3, rx_reg_4, rx_reg_5, rx_reg_6, rx_reg_7;//一个byte的各位
    wire rx_pulse;//当前位接收完成标志
    //有限状态机第一部分
    always @(*)
    begin
        case(curr_state)
            C_IDLE:
                if(div_cnt == HDIV_CNT)//达到半周期
                    next_state = C_RX;
                else//未达到半周期
                    next_state = C_IDLE;
            C_RX:
                if((div_cnt == DIV_CNT) && (rx_cnt >= RX_CNT))//接收结束
                    next_state  = C_IDLE;
                else//接收未结束
                    next_state  = C_RX;
        endcase
    end
    //有限状态机第二部分
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            curr_state <= C_IDLE;
        else
            curr_state <= next_state;
    end
    //有限状态机第三部分
    //更新计时器
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            div_cnt <= 10'h0;
        else if(curr_state == C_IDLE)
        begin
            if(rx == 1'b1) //接收到1，代表仍为空闲
                div_cnt <= 10'h0;
            else if(div_cnt < HDIV_CNT) //未达到半周期
                div_cnt <= div_cnt + 10'h1;
            else //接收到0（起始位），开始接收
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
    //更新接收到的总位数
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            rx_cnt <= 4'h0;
        else if(curr_state == C_IDLE)
            rx_cnt <= 4'h0;
        else if((div_cnt == DIV_CNT) && (rx_cnt < 4'hF))
            rx_cnt <= rx_cnt + 1'b1;
    end
    //更新当前位接收完成标志
    assign rx_pulse = (curr_state == C_RX) && (div_cnt == DIV_CNT);
    //根据当前接收到的总位数更新读入数据寄存器
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
    //设置读入数据
    always @(posedge clk or posedge rst)
    begin
        //复位
        if(rst)
        begin
            rx_vld <= 1'b0;
            rx_data <= 8'h55; //01010101
        end    
        //读入完成
        else if((curr_state == C_RX) && (next_state == C_IDLE))
        begin
            rx_vld  <= 1'b1;
            rx_data <= {rx_reg_7, rx_reg_6, rx_reg_5, rx_reg_4, rx_reg_3, rx_reg_2, rx_reg_1, rx_reg_0};
        end
        //读入未完成
        else
            rx_vld  <= 1'b0;
    end
endmodule
