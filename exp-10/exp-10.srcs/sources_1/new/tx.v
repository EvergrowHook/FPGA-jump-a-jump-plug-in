`timescale 1ns / 1ps

//bps = 115200
//clk = 100mhz
//div = clk / bps = 868

//通过硬件tx线传输1byte数据
//传输格式: 1位起始位(0) + 8位数据位 + 1位停止位(1)
module tx(
    input clk,//时钟
    input rst,//复位按钮
    input [7:0] tx_data, //待传输数据
    input tx_ena, //输入有效标志
    output reg tx, //硬件tx线
    output reg tx_vld//输出有效标志
    );
    //参数
    parameter DIV_CNT = 10'd867; //tx周期
    parameter TX_CNT = 4'h9; //待传输的总位数
    parameter C_IDLE = 1'b0; //空闲状态
    parameter C_TX = 1'b1; //传输状态
    //变量 
    reg curr_state;//现态
    reg next_state;//次态
    reg [9:0] div_cnt;//计时变量
    reg [4:0] tx_cnt;//已传输的总位数
    reg [7:0] tx_reg;//待传输数据
    //流程
    //有限状态机第一部分
    always @(*)
    begin
        case(curr_state)
            C_IDLE:
                if(tx_ena == 1'b1)//输入使能，开始传输
                    next_state <= C_TX;
                else
                    next_state <= C_IDLE;
            C_TX:
                if((div_cnt == DIV_CNT) && (tx_cnt >= TX_CNT)) //传输完成
                    next_state <= C_IDLE;
                else
                    next_state <= C_TX;
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
    //更新传输有效标志
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_vld <= 1'b0;
        else if(curr_state == C_TX && next_state == C_IDLE)
            tx_vld <= 1'b1;
        else
            tx_vld <= 1'b0;
    end
    //更新计时器
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
    //更新已传输位数
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
    //更新待传输的byte
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            tx_reg <= 8'b0;
        else if((curr_state == C_IDLE) && (tx_ena == 1'b1))
            tx_reg <= tx_data;
    end
    //更新当前传输数据位
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
