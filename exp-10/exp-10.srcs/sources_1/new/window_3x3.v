`timescale 1ns / 1ps

//����3x3����
module window_3x3(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [7:0] din,//������
	input window_ena,//������Ч��־
	output reg[7:0] data00,
	output reg[7:0] data01,
	output reg[7:0] data02,
	output reg[7:0] data10,
	output reg[7:0] data11,
	output reg[7:0] data12,
	output reg[7:0] data20,
	output reg[7:0] data21,
	output reg[7:0] data22,//3x3���ӵĸ�����
	output window_vld//�����Ч��־
	);
	//����
	wire [7:0] row0;//����һ�е�����ֵ
	wire [7:0] row1;//�м��е�����ֵ
	reg  [7:0] row2;//����һ�е�����ֵ
	wire read_matrix_ena;//��ȡ������Ч��־
	//����
	//�����½���3x3���ӵ�����
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			row2 <= 0;
		else if(window_ena)
			row2 <= din;
		else
			row2 <= row2;
	end
	//�����е������ݽ��������е�shift ram
	shift_ram shift_ram2 (
		.D(row2),
		.CLK(clk),
		.CE(window_ena),
		.SCLR(rst),
		.Q(row1)
	);
	//�м��е������ݽ����м��е�shift ram
	shift_ram shift_ram1 (
		.D(row1),
		.CLK(clk),
		.CE(window_ena),
		.SCLR(rst),
		.Q(row0)
	);
	//���Ϲ�������1clk
	delay_nclk #(.n(1)) delay_1clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(window_ena),
		.delay_vld(read_matrix_ena)
	);
	//����ͬ���źŶ�ȡ3X3����
	always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			{data00, data01, data02} <= 0;
			{data10, data11, data12} <= 0;
			{data20, data21, data22} <= 0;
		end
		else if(read_matrix_ena)
		begin
			{data00, data01, data02} <= {data01, data02, row0};
			{data10, data11, data12} <= {data11, data12, row1};
			{data20, data21, data22} <= {data21, data22, row2};
		end
	end
	//��ȡ��������1clk
	delay_nclk #(.n(1)) delay_1clk_2 (
		.clk(clk),
		.rst(rst),
		.delay_ena(read_matrix_ena),
		.delay_vld(window_vld)
	);
endmodule
