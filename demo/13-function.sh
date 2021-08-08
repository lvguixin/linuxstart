#!/bin/bash
#函数示例
function myfun()
{
    echo "这是一个shell函数"
}

myfun


#函数传can传参和返回值
function add()
{
    #local ret=$(($1+$2))
    #local ret=`expr $1+$2`
    local ret=$[$1+$2]
    return $ret
}

add 5 8
echo $?