#!/bin/bash

# 字符串操作时，双引号中可以有变量，且可以有转义字符
str1=zhangsan
echo $str1

str2="$str1"
echo $str2

str3='$str1 '$str2' $str2'
echo $str3

str4="$str1 san"
echo $str4

# 字符串截取
str5=lisiwangwu
echo str5:$str5
echo str5-length:${#str5}
echo str5-index2toend:${str5:2}
echo str5-index2to4end:${str5:2:4}

# 数组
favs=("a" "b" "c")
echo favs:${favs[*]}
echo favs[0]:${favs[0]}
echo favs[1]:${favs[1]}

# 注释
!<<EOF
asdasd
asdas
asd
EOF

# 自定义注释2
!<<text
自定义注释
text

