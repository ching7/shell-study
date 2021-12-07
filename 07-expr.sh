#!/bin/bash
a=10
b=20
############################### 算术运算
# expr执行数学运算
# 1.如果数字与运算符之间无空格时,不会进行数学运算,而是进行字符串拼接
# 2.如果数字与运算符之间有空格时,则进行数学运算
val=`expr $a + $b`
echo "a + b : $val"

val=`expr $b - $a`
echo "b - a : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $a / $b`
echo "a / b : $val"

val=`expr $a % $b`
echo "a % b : $val"


# if [ ] 前后需要空格
if [ $a == $b ]
then
	echo "a = b"
fi

if [ $a != $b ]
then
	echo "a!=b"
fi

############################### 关系运算
a=10
b=20

if [ $a -eq $b ]
then
	echo  "$a -eq $b:a等于b"
else
	echo "$a -eq $b:a不等于b"
fi

if [ $a -ne $b ]
then
	echo  "$a -ne $b:a不等于b"
else
	echo "$a -ne $b:a等于b"
fi

if [ $a -gt $b ]
then
	echo  "$a -gt $b:a大于b"
else
	echo "$a -gt $b:a不大于b"
fi

if [ $a -lt $b ]
then
	echo  "$a -lt $b:a小于b"
else
	echo "$a -lt $b:a不小于b"
fi
if [ $a -ge $b ]
then
	echo  "$a -ge $b:a大于等于b"
else
	echo "$a -ge $b:a小于b"
fi
