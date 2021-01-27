#include "pch.h"
#include <iostream>
#include <stdio.h>
#include <Windows.h>
#include <opencv2/opencv.hpp>
#include <Serial.h>
using namespace std;
using namespace cv;

int main() {
	//初始化串口
	CSerialPort serial;
	serial.InitPort(6, 115200, 'N', 8, 1);
	//无限循环，每次循环处理一张截图
	while (1) {
		//获取截图
		system("adb shell screencap -p /sdcard/jump.png && adb pull /sdcard/jump.png");
		//读取截图
		Mat Raw = imread("jump.png");
		//裁剪顶部800px，底部900px，得到640x1080px
		Mat Cut(Raw.rows - 1700, Raw.cols, Raw.type());
		for (int i = 0; i < Cut.rows; i++)
			for (int j = 0; j < Cut.cols; j++)
				Cut.at<Vec3b>(i, j) = Raw.at<Vec3b>(i + 800, j);
		//压缩图片（长宽各压缩至原来的1/5，得到128x216px）
		Mat Resize;
		resize(Cut, Resize, Size(0, 0), 0.2, 0.2);
		imshow("resize", Resize);
		//按任意键进行下一步
		waitKey(0);
		//用opencv做边缘检测（提供对照示例）
		Mat Edge = Resize.clone();
		Canny(Resize, Edge, 30, 15);
		imshow("edge", Edge);
		//按任意键进行下一步
		waitKey(0);
		//用fpga进行处理
		int print_i = 0, print_j = 0;//print_i/j：当前接收到的像素点的位置
		Mat Result(Edge.rows, Edge.cols, Edge.type());
		int sum = 0;//sum：当前串口接收到的字节总数
		int cnt = 0;//cnt：串口累计接收到的字节总数
		//向FPGA传输像素点数据，同时接收传回的数据
		for (int i = 0; i < Resize.rows; i++) {
			for (int j = 0; j < Resize.cols; j++) {
				//传输当前原始图像像素点的rgb数据
				unsigned char rgb_data[3];
				rgb_data[0] = Resize.at<Vec3b>(i, j)[2];//得到R数值
				rgb_data[1] = Resize.at<Vec3b>(i, j)[1];//得到G数值
				rgb_data[2] = Resize.at<Vec3b>(i, j)[0];//得到B数值
				serial.WriteData(rgb_data, 3);
				//定时输出，在尽量减少输入输出的运行时间的同时防止串口缓冲区积压太多导致接收失败
				if (j % 15 == 0)
					cout << "send: " << i << " " << j << " " << (int)rgb_data[0] << " " << (int)rgb_data[1] << " " << (int)rgb_data[2] << endl;
				//如果当前串口接收到返回的像素数据，处理串口数据并储存
				if ((sum = serial.GetBytesInCOM()) > 0) {
					char tx_data;
					for (int k = 0; k < sum; k++) {
						serial.ReadChar(tx_data);
						cnt++;
						//串口传输以两个字节为传输单位，在传输像素点时第二个字节有效
						if (cnt % 2 == 0) {
							//定时输出，在尽量减少输入输出的运行时间的同时防止串口缓冲区积压太多导致接收失败
							if (print_j % 15 == 0)
								cout << "receive: " << print_i << " " << print_j << " " << (int)((unsigned char)tx_data) << endl;
							//将当前像素数据存储至结果图像
							Result.at<uchar>(print_i, print_j) = tx_data;
							//修改像素点位置指针
							if (print_j == Resize.cols - 1) {
								print_j = 0;
								print_i++;
							}
							else
								print_j++;
						}
					}
				}
			}
		}
		//向FPGA的传输已完成，继续接收剩余数据
		int dis;//小人与方块的距离的平方
		bool get_res = false;//是否已接收到dis
		while (!get_res) {
			//如果接收到了数据
			if ((sum = serial.GetBytesInCOM()) > 0) {
				char tx_data;
				for (int k = 0; k < sum; k++) {
					//如果像素点还未接收完毕，接收像素点
					if (!(print_i == Resize.rows - 1 && print_j == Resize.cols - 1)) {
						serial.ReadChar(tx_data);
						cnt++;
						if (cnt % 2 == 0) {
							if (print_j % 15 == 0)
								cout << "receive: " << print_i << " " << print_j << " " << (int)((unsigned char)tx_data) << endl;
							Result.at<uchar>(print_i, print_j) = tx_data;
							if (print_j == Resize.cols - 1 && print_i != Resize.rows - 1) {
								print_j = 0;
								print_i++;
							}
							else
								print_j++;
						}
					}
					//接收dis
					else {
						serial.ReadChar(tx_data);
						cnt++;
						switch (cnt % 2) {
							//接收低位
						case 1:
							dis = (unsigned char)tx_data;
							break;
							//接收高位
						case 0:
							dis = dis + (((unsigned char)tx_data) << 8);
							get_res = true;
							break;
						}
					}
				}
			}
		}
		//显示接收到的dis
		cout << "dis square: " << dis << endl;
		//控制小人的跳跃
		double time;
		time = sqrt(dis) * 5 * 1.395;
		string strCommand = "adb shell input swipe 500 1600 500 1602 " + to_string(int(time));
		cout << strCommand << endl;
		system(strCommand.c_str());
		//显示接收到的图像
		imshow("result", Result);
		//如果想观察各图像结果，则采用waitKey，否则可注释到所有的waitKey，改用Sleep
		waitKey(0);
		//Sleep(2000);
	}
	return 0;
}
