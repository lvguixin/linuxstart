#!/bin/bash
#探测本地网络
#ping 探测某个ip地址是否通常
#侦测本网段内所有主机情况


function test_ip()
{
    local ip=$1
    if [ -z $ip ]
    then
        echo "参数不能为空"
        return
    fi 
    ping -c1 $ip &>/dev/null
    [ $? -eq 0 ] && echo "$ip on" || echo "$ip off"
}

for ((i=1; i<255; i++))
do
    test_ip "172.16.244.$i" & #&增加并发
done

wait
echo "全部完成"