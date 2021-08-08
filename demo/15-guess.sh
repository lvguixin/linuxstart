#!/bin/bash
#随机设定一个猜数字游戏，在0-99间随机设定一个数字为答案，猜测数字，相同就答对了并告诉猜了多少次答对的，不同告诉猜的比正确的大了还是小了

# 1，设置答案
answer=$(date +%s%N | cut -c18-19)
count=0
while true
do
    count=$[count+1]
    # 2，获取用户输入
    echo "请输入你的答案："
    read num
    # 3，如果相同，输出结果，退出
    if [ $num -eq $answer ]
    then
        echo "恭喜你，猜对了，一共猜了$count次。"
        break;
    elif [ $num -gt $answer ]
    then
        echo "不对，再小些"
    else
        echo "不对，再大些"
    fi 
done