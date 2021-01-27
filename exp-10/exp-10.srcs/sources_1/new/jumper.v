`timescale 1ns / 1ps

//跳一跳外挂FPGA部分的总流程模块
module jumper(
    input clk,//时钟
    input rst,//复位按钮
    input rx,//硬件rx线
    output tx//硬件tx线
    );
    //参数
    parameter PIC_ROWS = 8'd128;//图像行数
    parameter HALF_PIC_COLS = 8'd108;//图像列数的一半（用于判断角点）
    parameter PIC_COLS = 8'd216;//图像列数
    parameter SCAN_LENGTH = 8'd80;//扫描限制行数（用于判断角点）
    //变量
    wire [23:0] rgb_data;//接收到的像素点rgb值
    wire sobel_detect_data;//处理得到的Sobel算子数值
    wire is_player;//该像素点是否为小人

    wire read_vld;//读入有效标志
    wire process_vld;//图像处理有效标志
    wire judge_vld;//小人及角点判断有效标志
    wire whole_pic_vld;//所有像素点处理完毕标志
    wire tx_vld;//单次tx传输完成标志
    wire transmit_vld;//同一张图片所有需传回数据传输完毕标志

    reg [7:0] row;//当前像素点行数
    reg [7:0] col;//当前像素点列数

    reg has_player;//是否已经出现小人的标志
    reg [7:0] player_row;//小人位置的行数
    reg [7:0] player_col;//小人位置的列数
    reg has_corner_u;//是否已经出现上角点的标志
    reg [7:0] corner_u_row;//上角点的行数
    reg [7:0] corner_u_col;//上角点的列数
    reg [7:0] mincol;//出现边缘的最小列数（用于判断左右角点）
    reg [7:0] corner_l_row;//左角点的行数
    reg [7:0] corner_l_col;//左角点的列数
    reg [7:0] maxcol;//出现边缘的最大列数（用于判断左右角点）
    reg [7:0] corner_r_row;//右角点的行数
    reg [7:0] corner_r_col;//右角点的列数
    //流程
    //读入当前像素点rgb值
    read_pixel read_inst(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .rgb_data(rgb_data),
        .read_vld(read_vld)
    );
    //对当前像素点进行图像处理
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
    //根据当前像素点是否为小人标志点，修改小人位置值
    always @(posedge clk or posedge rst)
    begin
        if(rst || transmit_vld)
        begin
            has_player <= 0;
            player_row <= 0;
            player_col <= 0;
        end
        else if(process_vld && is_player && !has_player)
        begin
            has_player <= 1;
            player_row <= row;
            player_col <= col;
        end
    end
    //若当前像素点是图片最靠上的边缘点，则视为上角点，并修改上角点位置值
    always @(posedge clk or posedge rst)
    begin
        if(rst || transmit_vld)
        begin
            has_corner_u <= 0;
            corner_u_row <= 0;
            corner_u_col <= 0;
        end
        else if(process_vld && sobel_detect_data && !has_corner_u)
        begin
            has_corner_u <= 1;
            corner_u_row <= row;
            corner_u_col <= col;
        end
    end
    //若当前像素点是目前图片最靠左的边缘点，则视为左角点，并修改左角点位置值
    always @(posedge clk or posedge rst)
    begin
        if(rst || transmit_vld)
        begin
            mincol <= PIC_COLS - 1;
            corner_l_row <= 0;
            corner_l_col <= 0;
        end
        else if(process_vld && row < SCAN_LENGTH && sobel_detect_data && col < mincol)
        begin
            mincol <= col;
            corner_l_row <= row;
            corner_l_col <= col;
        end
    end
    //若当前像素点是目前图片最靠右的边缘点，则视为右角点，并修改右角点位置值
    always @(posedge clk or posedge rst)
    begin
        if(rst || transmit_vld)
        begin
            maxcol <= 0;
            corner_r_row <= 0;
            corner_r_col <= 0;
        end
        else if(process_vld && row < SCAN_LENGTH && sobel_detect_data && col > maxcol)
        begin
            maxcol <= col;
            corner_r_row <= row;
            corner_r_col <= col;
        end
    end
    //修改上述值消耗1clk
    delay_nclk #(.n(1)) delay_1clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(process_vld),
		.delay_vld(judge_vld)
	);
    //判断是否是全图最后一个像素点
    assign whole_pic_vld = judge_vld && (row == PIC_ROWS - 1 && col == PIC_COLS - 1);
    //计算方块中心位置 若方块位于画面左侧，则以上和左角点为准；若位于画面右侧，则以上和右角点为准
    wire [7:0] center_row = (corner_u_col < HALF_PIC_COLS)? corner_l_row: corner_r_row;
    wire [7:0] center_col = corner_u_col;
    //计算小人和方块中心距离的平方
    wire [7:0] dis_row = player_row > center_row? player_row - center_row: center_row - player_row;
    wire [7:0] dis_col = player_col > center_col? player_col - center_col: center_col - player_col;
    wire [15:0] dis = dis_row * dis_row + dis_col * dis_col;
    //根据1位的Sobel算子值设置8位的Sobel图像返回值
    wire [7:0] sobel_data = sobel_detect_data? 8'd255: 8'd0;
    //设置待传输的数据（最后一个像素点则传输距离，否则传输Sobel值
    wire [15:0] tx_data = (row == PIC_ROWS - 1 && col == PIC_COLS - 1)? dis: {sobel_data, sobel_data};
    //传输2byte的数据
    transmit_result #(.n(2)) trans_inst(
        .clk(clk),
        .rst(rst),
        .data(tx_data),
        .transmit_ena(judge_vld),
        .tx(tx),
        .transmit_vld(tx_vld)
    );
    //判断是否所有数据均已传输完成
    assign transmit_vld = tx_vld && (row == PIC_ROWS - 1 && col == PIC_COLS - 1);
    //更新像素点位置指针
    always @(posedge clk or posedge rst)
    begin
        if(rst || transmit_vld)
        begin
            row <= 0;
            col <= 0;
        end
        else if(tx_vld)
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
endmodule
