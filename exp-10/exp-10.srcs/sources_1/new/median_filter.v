`timescale 1ns / 1ps

//�ԻҶ�ֵ������ֵ�˲�
module median_filter(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [7:0] grey_data,//�Ҷ�ֵ
	input [5:0] row,//��ǰ���ص�����
	input [5:0] col,//��ǰ���ص�����
	input median_ena,//������Ч��־
	output [7:0] median_filter_data,//��ֵ�˲�ֵ
	output median_vld//�����Ч��־
    );
	//����
	wire [7:0] mp11,mp12,mp13;
	wire [7:0] mp21,mp22,mp23;
	wire [7:0] mp31,mp32,mp33;//3x3���ӵĸ���ֵ
	wire matrix_match_ena;//�Ƚ���Ч��־
	wire [7:0] middle_data;//��ֵ
	wire [7:0] max [2:0];//ÿ�е����ֵ
	wire [7:0] min [2:0];//ÿ�е���Сֵ
	wire [7:0] mid [2:0];//ÿ�е��м�ֵ
	wire [7:0] maxMin, minMax, midMid;//�ڶ����Ľ��ֵ
	//����
	//���²���ȡ3x3����
	window_3x3 window(
		.clk(clk),
		.rst(rst),
		.din(grey_data),
		.window_ena(median_ena),
		.data00(mp11),
		.data01(mp12),
		.data02(mp13),
		.data10(mp21),
		.data11(mp22),
		.data12(mp23),
		.data20(mp31),
		.data21(mp32),
		.data22(mp33),
		.window_vld(matrix_match_ena)
	);
	//�Զ�ȡ����������ֵ�˲�����
	//�㷨�������ע��
	//step1:ÿһ������ 1clk
	compare U_row1(
		.clk(clk),
		.rst(rst),
		.data1(mp11),
		.data2(mp12),
		.data3(mp13),
		.min(min[0]),
		.middle(mid[0]),
		.max(max[0])
		);
	compare U_row2(
		.clk(clk),
		.rst(rst),
		.data1(mp21),
		.data2(mp22),
		.data3(mp23),
		.min(min[1]),
		.middle(mid[1]),
		.max(max[1])
		);
	compare U_row3(
		.clk(clk),
		.rst(rst),
		.data1(mp31),
		.data2(mp32),
		.data3(mp33),
		.min(min[2]),
		.middle(mid[2]),
		.max(max[2])
		);
	//step2:С��ȡ�� ����ȡС������ȡ�� 1clk
	compare U_col1(
		.clk(clk),
		.rst(rst),
		.data1(min[0]),
		.data2(min[1]),
		.data3(min[2]),
		.min(),
		.middle(),
		.max(maxMin)
		);
	compare U_col2(
		.clk(clk),
		.rst(rst),
		.data1(max[0]),
		.data2(max[1]),
		.data3(max[2]),
		.min(minMax),
		.middle(),
		.max()
		);
	compare U_col3(
		.clk(clk),
		.rst(rst),
		.data1(mid[0]),
		.data2(mid[1]),
		.data3(mid[2]),
		.min(),
		.middle(midMid),
		.max()
		);
	//step3:�ٶ�������ֵȡ��ֵ 1clk
	compare U_col0(
		.clk(clk),
		.rst(rst),
		.data1(minMax),
		.data2(maxMin),
		.data3(midMid),
		.min(),
		.middle(middle_data),
		.max()
		);
	//��ֵ�˲�������3clk
	delay_nclk #(.n(3)) delay_3clk (
		.clk(clk),
		.rst(rst),
		.delay_ena(matrix_match_ena),
		.delay_vld(median_vld)
	);
	//���ڵ�ǰ���ص���3x3���ӵ����½ǣ���������м������е�ֵ��Ч
	assign median_filter_data = (row < 2 || col < 2)? grey_data: middle_data;
endmodule
