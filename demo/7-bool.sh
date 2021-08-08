#!/bin/bash
#布尔与逻辑运算
# ! 非
# -o 或
# -a 与 [$a -lt 100 -a $b -gt 15]
# && 逻辑与 [[$a -lt 100 && $b -gt 15]]
# || 逻辑或
# == 相等
# != 不等于

a=11; b=5
#逻辑与
if [[ $a -gt 0 && $b -gt 0 ]]
then
    echo "a,b都等于0"
fi