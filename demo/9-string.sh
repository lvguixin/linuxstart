#!/bin/bash
#字符串练习
#${#str}字符串长度
#获取自串 ${str:1:3} 从第一个字符开始截取三个

#字符串长度
str="helloworld"
echo "字符串"$str"的长度为："${#str}

#获取子串
echo "字符串"$str"子串"${str:1:3}

#查找子串
matched=`expr index "$str" wo`
echo "字符串"$str"查找wo的位置在"$matched



#字符串运算符
# = 字符串是否相等 [ $a = $b ]
# != 字符串是否不相等 [ $a != $b ]
# -z 字符串长度是否为0 [ -z $a ]
# -n 字符串的长度是否不为0 [ -n "$a" ]
# $ 字符串是否为空     [ $a ]