#!/usr/bin/env bash
# 进阶算术运算请使用命令行工具 bc

# 计算 4 * arctangent(1) ，计算结果保留 10 位有效数字
# -l 表示使用标准数学库
pi=$(echo "scale=10; 4*a(1)" | bc -l)
echo "$pi"


# 计算 4 * arctangent(1) ，计算结果保留 1000 位有效数字
# 禁止输出结果因超长而自动折行
pi=$(BC_LINE_LENGTH=0 bc -l <<< "scale=1000; 4*a(1)")
echo "$pi"


