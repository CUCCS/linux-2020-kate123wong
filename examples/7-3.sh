#!usr/bin/env bash
#MES=( John Eric Jessica )

# 代码填空，使得以下代码避免输出failed关键字
NUMBERS=()  # 构造包含1到10整数的数组
STRINGS=()  # 构造分别包含hello和world字符串的数组
NumberOfNames=0 # 请使用动态计算数组元素个数的方法
second_name=''  # 读取NAMES数组的第2个元素值进行赋值

# 测试代码 - 勿修改

T_NUMBERS=$(seq 1 10)
T_STRINGS=(hello world)

# Test Case 1
i=0
for n in "${T_NUMBERS[@]}";do
  if [[ ${n} -ne ${NUMBERS[${i}]} ]];then
    echo "failed in NUMBERS test"
  fi
  i=$((i+1))
done

# Test Case 2
i=0
for n in "${T_STRINGS[@]}";do
  if [[ "${n}" != "${STRINGS[${i}]}" ]];then
    echo "failed in STRINGS test"
  fi
  i=$((i+1))
done

# Test Case 3
if [[ $NumberOfNames -ne ${#NAMES[@]} ]];then
    echo "failed in NumberOfNames test"
fi

# Test Case 4
if [[ "${NAMES[1]}" != "${second_name}" ]];then
  echo "failed in Array Element Access test"
fi
