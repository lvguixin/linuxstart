#!/bin/bash
# 1,日志文件/tmp/my.log
# 2,存在与权限检查
# 3，判断/tmp目录是否存在，不存在则创建
# 4，判断my.log文件是否存在，不存在则创建
# 5，判断是否具备读写权限
# 6，备份检查
# 7，如果日志文件大小超过1k，自动备份
# 8，在文件尾追加信息，带上日志时间
log_path="./tmp/"
log_file="my.log"
log_full_path="$log_path$log_file"

# 1、文件检查

function check_log()
{
    if [ ! -d $log_path ]
    then 
        mkdir -p $log_path
    fi 

    if [ ! -f $log_full_path ]
    then
        touch $log_full_path
    fi 

    if [ ! -r $log_full_path ]
    then
        echo "$log_full_path 文件不可读"
        return 1
    fi

    if [ ! -w $log_full_path ]
    then
        echo "$log_full_path 文件不可写"
        return 1
    fi 
}


# 2、备份日志
backup_log()
{
    local size=`ls -l $log_full_path | awk '{print $5}'`
    if [ $size -gt 1024 ]
    then
        local backup_file="$log_path`date +'%Y-%m-%d-%H-%M-%S'`.log"
        mv $log_full_path $backup_file
        echo "已备份到 $backup_file"
    fi

}


# 3、文件追加
write_log()
{
    check_log
    if [ $? -ne 0 ]
    then
        return 1
    fi

    backup_log
    local nowtime=`date +'%Y-%m-%d %H:%M'`
    echo "[$nowtime] $1" | tee -a $log_full_path 
    return 0
}

write_log '###############################'
write_log 'log write testing string 11'
write_log 'log write testing string 22'
write_log 'log write testing string 33'
write_log "------------------------------"
