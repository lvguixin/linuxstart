#!/bin/bash
a=11
b=5
#加法 expr 第一种方法
val=`expr $a + $b`
echo "$a + $b = $val"

#第二种方法
val=$[a-b]
echo "$a - $b = $val"