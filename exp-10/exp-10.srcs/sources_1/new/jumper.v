`timescale 1ns / 1ps

//��һ�����FPGA���ֵ�������ģ��
module jumper(
    input clk,//ʱ��
    input rst,//��λ��ť
    input rx,//Ӳ��rx��
    output tx//Ӳ��tx��
    );
    //����
    parameter PIC_ROWS = 8'd128;//ͼ������
    parameter HALF_PIC_COLS = 8'd108;//ͼ��������һ�루�����жϽǵ㣩
    parameter PIC_COLS = 8'd216;//ͼ������
    parameter SCAN_LENGTH = 8'd80;//ɨ�����������������жϽǵ㣩
    //����
    wire [23:0] rgb_data;//���յ������ص�rgbֵ
    wire sobel_detect_data;//����õ���Sobel������ֵ
    wire is_player;//�����ص��Ƿ�ΪС��

    wire read_vld;//������Ч��־
    wire process_vld;//ͼ������Ч��־
    wire judge_vld;//С�˼��ǵ��ж���Ч��־
    wire whole_pic_vld;//�������ص㴦����ϱ�־
    wire tx_vld;//����tx������ɱ�־
    wire transmit_vld;//ͬһ��ͼƬ�����贫�����ݴ�����ϱ�־

    reg [7:0] row;//��ǰ���ص�����
    reg [7:0] col;//��ǰ���ص�����

    reg has_player;//�Ƿ��Ѿ�����С�˵ı�־
    reg [7:0] player_row;//С��λ�õ�����
    reg [7:0] player_col;//С��λ�õ�����
    reg has_corner_u;//�Ƿ��Ѿ������Ͻǵ�ı�־
    reg [7:0] corner_u_row;//�Ͻǵ������
    reg [7:0] corner_u_col;//�Ͻǵ������
    reg [7:0] mincol;//���ֱ�Ե����С�����������ж����ҽǵ㣩
    reg [7:0] corner_l_row;//��ǵ������
    reg [7:0] corner_l_col;//��ǵ������
    reg [7:0] maxcol;//���ֱ�Ե����������������ж����ҽǵ㣩
    reg [7:0] corner_r_row;//�ҽǵ������
    reg [7:0] corner_r_col;//�ҽǵ������
    //����
    //���뵱ǰ���ص�rgbֵ
    read_pixel read_inst(
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .rgb_data(rgb_data),
        .read_vld(read_vld)
    );
    //�Ե�ǰ���ص����ͼ����
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
    //���ݵ�ǰ���ص��Ƿ�ΪС�˱�־�㣬�޸�С��λ��ֵ
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
    //����ǰ���ص���ͼƬ��ϵı�Ե�㣬����Ϊ�Ͻǵ㣬���޸��Ͻǵ�λ��ֵ
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
    //����ǰ���ص���ĿǰͼƬ���ı�Ե�㣬����Ϊ��ǵ㣬���޸���ǵ�λ��ֵ
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
    //����ǰ���ص���ĿǰͼƬ��ҵı�Ե�㣬����Ϊ�ҽǵ㣬���޸��ҽǵ�λ��ֵ
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
    //�޸�����ֵ����1clk
    delay_nclk #(.n(1)) delay_1clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(process_vld),
		.delay_vld(judge_vld)
	);
    //�ж��Ƿ���ȫͼ���һ�����ص�
    assign whole_pic_vld = judge_vld && (row == PIC_ROWS - 1 && col == PIC_COLS - 1);
    //���㷽������λ�� ������λ�ڻ�����࣬�����Ϻ���ǵ�Ϊ׼����λ�ڻ����Ҳ࣬�����Ϻ��ҽǵ�Ϊ׼
    wire [7:0] center_row = (corner_u_col < HALF_PIC_COLS)? corner_l_row: corner_r_row;
    wire [7:0] center_col = corner_u_col;
    //����С�˺ͷ������ľ����ƽ��
    wire [7:0] dis_row = player_row > center_row? player_row - center_row: center_row - player_row;
    wire [7:0] dis_col = player_col > center_col? player_col - center_col: center_col - player_col;
    wire [15:0] dis = dis_row * dis_row + dis_col * dis_col;
    //����1λ��Sobel����ֵ����8λ��Sobelͼ�񷵻�ֵ
    wire [7:0] sobel_data = sobel_detect_data? 8'd255: 8'd0;
    //���ô���������ݣ����һ�����ص�������룬������Sobelֵ
    wire [15:0] tx_data = (row == PIC_ROWS - 1 && col == PIC_COLS - 1)? dis: {sobel_data, sobel_data};
    //����2byte������
    transmit_result #(.n(2)) trans_inst(
        .clk(clk),
        .rst(rst),
        .data(tx_data),
        .transmit_ena(judge_vld),
        .tx(tx),
        .transmit_vld(tx_vld)
    );
    //�ж��Ƿ��������ݾ��Ѵ������
    assign transmit_vld = tx_vld && (row == PIC_ROWS - 1 && col == PIC_COLS - 1);
    //�������ص�λ��ָ��
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
