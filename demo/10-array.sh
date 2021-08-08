#!/bin/bash
# 1，数组的定义
arr=("aa" "bb" "cc" "hello world")
# 2，设置元素
arr[2]="222"
# 3，读取元素
echo "下标为2的元素；"${arr[2]}
# 4，读取所有元素
echo "读取所有所有元素："${arr[@]}
# 5，获取数组长度
len=${#arr[@]}
echo "获取数组的长度："$len

