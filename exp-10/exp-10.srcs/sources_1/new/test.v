`timescale 1ns / 1ps

//只传回经过处理的像素点
module test(
    input clk,
    input rst,
    input rx,
    output tx
    );

    parameter PIC_ROWS = 8'd128;
    parameter PIC_COLS = 8'd216;

    wire [23:0] rgb_data;
    wire [7:0] grey_data;
    wire sobel_detect_data;
    wire read_vld;
    wire process_vld;
    wire tx_vld;

    reg [7:0] row;
    reg [7:0] col;

    read_pixel read_inst(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .rgb_data(rgb_data),
        .read_vld(read_vld)
    );

    pixel_process process_inst(
	    .clk(clk),
	    .rst(rst),
	    .rgb_data(rgb_data),
        .row(row),
        .col(col),
	    .process_ena(read_vld),
	    .sobel_detect_data(sobel_detect_data),
	    .is_player(is_player),
	    .process_vld(process_vld)
    );

    always @(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            row <= 0;
            col <= 0;
        end
        else if(process_vld)
        begin
            if(col == PIC_COLS - 1)
            begin
                if(row == PIC_ROWS - 1)
                    row <= 0;
                else
                    row <= row + 1;
                col <= 0;
            end
            else
                col <= col + 1;
        end
    end

    wire [7:0]tx_data = sobel_detect_data? 8'd255: 8'd0;

    tx tx_inst(
        .clk(clk),
        .rst(rst),
        .tx_data(tx_data),
        .tx_ena(process_vld),
        .tx(tx),
        .tx_vld(tx_vld)
    );
endmodule
