#!/bin/bash
#文件测试
# -d 是否为目录
# -f 是否为普通文件
# -r, -w, -x 是否可读可写可执行
# -s 文件是否为空
# -e 文件是否存在
file=$0
echo "文件是： $file"
if [ -f $file ]
then
    echo "$file 为普通文件"
fi
if [ -e $file ]
then
    echo "存在"
fi 

if [ -r $file ]
then 
    echo "可读"
fi 