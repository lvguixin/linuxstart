#!/bin/bash
# 1,日志文件/tmp/my.log
# 2,存在与权限检查
# 3，判断/tmp目录是否存在，不存在则创建
# 4，判断my.log文件是否存在，不存在则创建
# 5，判断是否具备读写权限
# 6，备份检查
# 7，如果日志文件大小超过1k，自动备份
# 8，在文件尾追加信息，带上日志时间

if [ -d /tmp ]
then
    echo "/tmp已存在"
else
    mkdir -p /tmp
fi

if [ -e /tmp/my.log ]
then
    touch /tmp/my.log
fi 

if [ -r /tmp/my.log ]
then
    echo "拥有读权限"
else
    chmod +r /tmp/my.log
fi 

if [ -w /tmp/my.log ]
then
    echo "拥有写权限"
else
    chmod +w /tmp/my.log
fi
