`timescale 1ns / 1ps

//ʹ�����Ч��־��������Ч��־��n clk��Ч
module delay_nclk #(parameter n = 1) (
	input clk,//ʱ��
	input rst,//��λ��ť
    input delay_ena,//������Ч��־
    output delay_vld//�����Ч��־
    );
	//����
	reg [n - 1:0] ena_r;//��λ�Ĵ���
	//����
	//������λ�Ĵ���
	always @(posedge clk or posedge rst)
	begin
		if(rst)
			ena_r <= 0;
		else if(n > 1)
			ena_r <= {ena_r[n - 2:0], delay_ena};
		else
			ena_r <= delay_ena;
	end
	//n clk��������Ч��־����λ�Ĵ��������
	assign delay_vld = ena_r[n - 1];
endmodule
