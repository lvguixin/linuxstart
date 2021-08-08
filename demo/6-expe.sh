#!/bin/bash
#关系运算
#-eq    等于
#-ne    不等于
#-gt    大于
#-ge    大于等于
#-lt    小于
#-le    小于等于 

a=11
b=5
if [$a -eq $b]
then
    echo "$a -eq $b : a等于b"
else
    echo "$a -eq $b : a不等于b"
fi