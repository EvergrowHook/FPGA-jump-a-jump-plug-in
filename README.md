# 用FPGA板实现跳一跳外挂
## FPGA jump-a-jump plug-in
用FPGA板实现图像处理，并通过UART与电脑进行通讯，电脑通过Adb工具与手机进行通讯。
Use a FPGA board to process images caught by a mobile and sent by a computer through UART, and send the data back to control the mobile to play the jump-a-jump game.

#### 硬件说明
#### HARDWARE
FPGA chip model: Artix-7 xc7a100tcsg324-1
size of mobile screen: 2340\*1080px (if use screen of different size, change the parameter in verilog files)

#### 参考资料
#### Reference

* 远程实验01_通过串口与外设通信
  采用了里面的rx, tx模块作为FPGA的uart接口
  来源：课程群
* FPGA-based-image-processing
  参考了里面的图像处理流程和各个处理模块的设计
  来源：<https://github.com/kunliu7/FPGA-based-image-processing>
* wechatJump
  参考了里面的cpp程序作为电脑接口的一部分
  来源：<https://github.com/csuhan/wechatJump>
* Windows下C++ 串口编程实例
  采用作为电脑的串口接口
  来源：<https://blog.csdn.net/wzmsltw/article/details/50723267>
* CSDN的很多篇博客
  解决了关于图像处理的原理及3x3算子的编写等许多问题
