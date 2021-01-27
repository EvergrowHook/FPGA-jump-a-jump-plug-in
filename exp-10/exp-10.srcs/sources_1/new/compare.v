`timescale 1ns / 1ps

//�Ƚ�����Ԫ�صĴ�С
module compare(
	input clk,//ʱ��
	input rst,//��λ��ť
	input [7:0] data1,
	input [7:0] data2,
	input [7:0] data3,//��������
	output reg [7:0] min,//��Сֵ
	output reg [7:0] middle,//�м�ֵ
	output reg [7:0] max//���ֵ
	);

    always @(posedge clk or posedge rst)
	begin
		if(rst)
		begin
			max <= 0;
			min <= 0;
			middle <= 0;
		end
		else
		begin
			if(data1 < data2)
			begin
				//data1<data2<data3
				if(data2 < data3)
				begin
					min <= data1;
					middle <= data2;
					max <= data3;
				end
				//data3<data1<data2
				else if(data3 < data1)
				begin
					min <= data3;
					middle <= data1;
					max <= data2;
				end
				//data1<data3<data2
				else
				begin
					min <= data1;
					middle <= data3;
					max <= data2;
				end
			end
			else
			begin
				//data2<data1<data3
				if(data1 < data3)
				begin
					min <= data2;
					middle <= data1;
					max <= data3;
				end
				//data3<data2<data1
				else if(data3 < data2)
				begin
					min <= data3;
					middle <= data2;
					max <= data1;
				end
				//data2<data3<data1
				else
				begin
					min <= data2;
					middle <= data3;
					max <= data1;
				end
			end
		end
	end
endmodule
