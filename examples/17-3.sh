#!usr/bin/env bash
# 16进制表示的 ascii 码: 7c，英文术语：vertical bar，Shell编程里的管道操作符
printf '%s' '|' | xxd  

# ref: https://www.zhihu.com/question/21747929/answer/319675621
printf '%s' '丨' | xxd # 16进制表示的 ascii 码: e4b8a8，汉语拼音：gun
