## 用FPGA实现跳一跳外挂

### 【实验目的】

利用FPGA能够进行并行流水线计算的特性，用FPGA对接收到的图片的各个像素进行处理后返回处理结果，并以电脑为中介控制手机，实现跳一跳外挂。

### 【实验环境】

* FPGA板
* Vivado
* 在Debug x64环境下配置了OpenCV3或4环境的Visual Studio
* ADB工具
* 安卓手机

### 【实验过程】

#### 总流程

##### 电脑部分(上位机部分)

* 用adb工具将手机截屏发送到电脑  
  adb截屏代码：adb shell screencap -p /sdcard/jump.png && adb pull /sdcard/jump.png  
  得到的截屏尺寸：2340x1080px  
* 截去截屏中不需要的部分（顶部的800x1080px和底部的900x1080px）  
  顶部为分数，底部为已经跳过的方块  
  得到的图片尺寸：640x1080px  
* 压缩图片，在尽量不影响精度的前提下缩短FPGA处理时间  
  长宽均压缩为上一步的1/5  
  得到的图片尺寸：128x216px  
* 从上到下、从左到右依次将各个像素点的rgb值用串口发送到FPGA，同时接收从FPGA中传回的处理后的像素值  
* 接收FPGA从串口中传回的小人与方块的距离的平方dis（距离单位：像素，以压缩后的距离为准）  
* 计算按压时间time：公式time = sqrt(dis) \* 5 \* 1.395（乘5是因为尺寸被压缩到1/5）  
* 用adb工具在手机中模拟按压  
  adb模拟按压代码：adb shell input swipe 500 1600 500 1602 to_string(int(time))  
* 显示经过FPGA处理得到的边缘图像  
* 自动延时2s，等待画面更新完毕（如果只想观察外挂效果）或手动键盘输入，进入下一循环（如果想观察得到的图像）  

##### FPGA部分（下位机部分）

* 从串口中接收当前图像的当前像素点  
* 识别是否为小人位置参考点  
  原理：小人的图像不随游戏过程改变，且小人的颜色与各种物块的颜色均不同。小人自身颜色随位置不同有细微差别，特别在当前压缩比例下有且仅有底部像素点具有与参考RGB值相近的RGB值  
  方法：计算当前像素点的RGB值与参考RGB值的差，如果三个差值均很小(<5)，就将其看作小人底部  
  小人底部像素点RGB参考值：54/60/102  
* 将当前像素点转化为Sobel像素点  
  原理：  
  * 将图像转化为灰度图  
  * 进行中值滤波  
  * 对滤波后的灰度图运行Sobel边缘检测，转化为只有边缘的黑白图像  
* 识别是否为方块角点  
  原理：  
  在边缘检测后的图像中，画面最上方的边缘点可视为下一个物块的上角点；去掉干扰区间后画面最左/右边的像素点可视为左/右角点  
  由于大多数物块是轴对称图形，利用两个角点的坐标可以确定物块中心坐标  
  过程：  
  * 由于像素点从上到下、从左到右传输，第一个白色像素点就是物块的上角点corner1  
  * 在传输过程中不断更新迭代，得到画面最左侧和最右侧的白色像素点的位置  
  * 如果上角点在画面右侧，则最右侧白色像素点就是物块的可靠侧角点corner2  
  * 否则最左侧白色像素点就是物块的可靠侧角点corner2  

  中心坐标：row=corner2.row，col=corner1.col  
* 计算小人与物块的距离  
  由小人位置和物块位置，用勾股定理计算两者距离  
* 通过串口向电脑传回数据，当整个图片未传输完成时传输Sobel像素值，否则传输距离  

#### 文件及模块以及包含关系

##### 上位机

* jump.cpp  
  c++的OpenCV图像处理代码、uart控制代码以及adb与手机通讯  
  从手机接收截图，裁剪、压缩后用uart发送给fpga，从uart接收到距离后计算出按压时间，传输给手机，同时显示用OpenCV和FPGA分别处理得到的结果，此后进行下一次循环  
* Serial.h/cpp  
  存储电脑处理串口数据所需的函数  

##### 下位机

* jumper  
  由于流程采用流水线模式并行进行，即在接收下一个像素数据的同时处理上一个像素信息，因此系统会同时处于多个状态，不适用于有限状态机的转换模式，各个状态通过xx_ena标记是否使能，通过xx_vld标记当前时刻输出数据是否有效  
  输入：clk, rst, rx（硬件中的rx数据线）  
  输出：tx（硬件中的tx数据线）  
  子模块：  
  * read_pixel  
    从rx读入当前像素的rgb值  
    输入：clk, rst, rx（没有read_ena，因为上位机随时从rx数据线传输像素数据）  
    输出：rgb_data（当前接收像素的rgb值）, read_vld  
    子模块：  
    * rx  
      从uart读入一个字节的数据  
      输入：clk, rst, rx（硬件中的rx数据线）  
      输出：rx_data（当前接收的字节）, rx_vld  
  * pixel_process  
    处理当前像素得到sobel边缘检测二值图  
    模块内的子模块使能顺序：RGB2Grey->median_filter->sobel_edge_detect  
    输入：clk, rst, rgb_data（当前像素的rgb值）, process_ena  
    输出：sobel_detect_data（当前像素的sobel值）, is_player（当前像素是否为小人顶部）, process_vld  
    子模块：  
    * RGB2Grey  
      将RGB图像转为8位灰度图像  
      RGB像素点存储：(由高位到低位)RGB  
      输入：clk, rst, r0, g0, b0（分开的当前像素rgb值）, rgb2grey_ena（=process_ena）  
      输出：grey_data（得到的当前像素灰度值）, rgb2grey_vld  
      子模块：  
      * delay_nclk  
        输入ena信号，n个时钟周期后输出vld信号  
        参数：n（需要延迟输出的时钟周期数量）  
        输入：clk, rst, delay_ena  
        输出：delay_vld  
    * median_filter  
      对图像进行中值滤波  
      中值滤波：对每个像素点，取以其为右下角的3x3矩阵算子，将该像素点的值改为矩阵的中值  
      模块内的子模块使能顺序：window_3x3->compare（指整体的比较运算）  
      输入：clk, rst, grey_data（上一步得到的当前像素灰度值）, row, col(当前像素点行列值）, median_ena  
      输出：median_filter_data（当前像素中值滤波后的灰度值）, median_vld  
      子模块：  
      * window_3x3  
        更新一个以当前像素为右下角元素的3x3算子  
        输入：clk, rst, din（当前像素的相关值）, window_ena  
        输出：data00, data01, data02, data10, data11, data12, data20, data21, data22（3x3算子的各元素）, window_vld  
        子模块：  
        * shift_ram（IP核）  
          行移位寄存器  
          输入：CLK, SCLR（rst）, D（移位寄存器的输入值）, CE（clock enable）  
          输出：Q（移位寄存器的输出值）  
        * delay_nclk  
          同RGB2Grey的子模块delay_nclk  
      * compare  
        输入三个元素，输出max, min, middle值  
        输入：clk, rst, data1, data2, data3（待比较的三个元素）  
        输出：min, middle, max  
      * delay_nclk  
        同RGB2Grey的子模块delay_nclk  
    * sobel_edge_detect  
      用Sobel算子判断图像中的边缘，并将灰度图像转为只有边缘的二值化图像  
      Sobel算子：分为3步计算  
      第一步，计算一个3x3算子的Gx和Gy  
      ![](http://latex.codecogs.com/svg.latex?Gx\text{or}Gy=\begin{vmatrix}-1&0&+1\\\\-2&0&+2\\\\-1&0&+1\end{vmatrix}）  
      （行列式内部的数指3x3算子各元素的权重）  
      第二步，计算G=Gx+Gy  
      第三步，二值化，若G>THRESHOLD，则认为是边沿，Sobel值设为1，否则设为0  
      输入：clk, rst, median_filter_data（当前像素的中值滤波灰度值）, row, col(当前像素点行列值）, sobel_ena  
      输出：sobel_detect_data（当前像素的sobel值）, sobel_vld  
      子模块：  
      * window_3x3  
        同median_filter的子模块window_3x3  
      * delay_nclk  
        同RGB2Grey的子模块delay_nclk  
  * delay_nclk  
    同RGB2Grey的子模块delay_nclk  
  * transmit_result  
    通过uart传输数据  
    输入：clk, rst, data（待传输数据）, transmit_ena  
    输出：tx（硬件中的tx数据线）, transmit_vld  
    子模块：  
    * delay_nclk  
        同RGB2Grey的子模块delay_nclk  
    * tx  
        通过uart传输1byte数据  
        输入：clk, rst, tx_data（待传输数据）, tx_ena  
        输出：tx（硬件tx线）, tx_vld  

#### 时序

从电脑端发送一个像素的rgb值开始计算  
clk一栏显示的是从起始时间点开始计数的clk数目  

|clk    |操作1  |操作2  |
|---    |---    |---    |
|DIV_CNT      |UART接收到R|       |
|2*DIV_CNT      |UART接收到G|       |
|3*DIV_CNT      |UART接收到B|RGB转灰度开始|
|3*DIV_CNT+1    |判断是否为小人标志点| |
|3*DIV_CNT+2    |RGB转灰度完成|中值滤波开始|
|3*DIV_CNT+4    |中值滤波的3x3算子更新完毕|  |
|3*DIV_CNT+7    |中值滤波完成|Sobel检测开始|
|3*DIV_CNT+9    |中值滤波的3x3算子更新完毕|  |
|3*DIV_CNT+12   |Sobel检测完成| |
|3*DIV_CNT+13   |小人及方块位置更新完成|回传数据开始|
|5*DIV_CNT+13   |回传数据完成| |
|5*DIV_CNT+14   |更新像素点位置指针完成| |

由于图像处理时间远小于一个像素点传输的时间，因此小人标志点的判断不需专门与整个图像处理过程进行时序同步  
由上表可知，上一个像素点的处理和回传与下一个像素点的传输是同时进行的

### 【总结与思考】

本次实验的一些不足之处：  

* 生成的边缘图像相较OpenCV生成的标准图像明显缺乏细节，特别在物块颜色为某些特定颜色（例如荧光绿色）时，会出现大面积缺失边缘的现象。这可能是因为Sobel算子的精度不如Canny算子，也可能与灰度图像的算法（从生成的灰度图来看）与OpenCV不同有关。
* 由于uart是串行传输数据，导致图像处理的速度受uart的影响过大。
* 本次实验以本人手机的分辨率作为硬件设定，移植到其他手机上时不能直接采用该bitstream，不仅要修改PIC_ROWS, PIC_COLS参数，由于shift ram采用的是IP核，还要修改IP核设定。
* 为了加快处理速度及减少编程工作量，小人及物块的位置的确定都大量采用了近似，特别当物块在左侧时，假定的左角点位置其实是物块的投影的边缘；物块为长方形时，中心也不能仅由两个角点的行列值确定。在物块面积过小或距小人过近时，这些误差都容易造成外挂失败。

### 【参考资料】

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
