# RV-Libm

#### 介绍
高性能RISC-V基础数学库

#### 软件架构
函数源码皆由RISC-V汇编指令直接实现，共69个函数，其中包含67个典型函数和2个内部调用函数.


#### 安装教程

1.  使用环境：Ubuntu 20.04.3 LTS，遵循RVV-0.10规范的指令功能模拟器SPIKE功能模拟器
2.  使用工具链：https://github.com/riscv-collab/riscv-gnu-toolchain
3.  编译选项：遵循正常编译执行选项-march=rv64gcv和设置向量指令一次处理元素位数选项以及向量寄存器位数设置选项

#### 使用说明

1.  编写测试程序
2.  调用汇编函数
3.  链接编译执行

#### 参与贡献

1. Li Fei
2. Xu Jinchen
3. Cao Hao
4. Hao Jiangwei
5. Song Guanghui



#### 说明

1.  If you find any problems, please leave a message
