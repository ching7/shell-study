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
# 只支持数字 不支持字符串
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
if [ $a -le $b ]
then
	echo  "$a -ge $b:a小于等于b"
else
	echo "$a -ge $b:a大于b"
fi

# 布尔运算 ##########
a=10
b=20
if [ $a != $b ]
then
	echo "$a != $b :  a 不等于 b"
else
	echo "$a == $b :  a 不等于 b"
fi

if [ $a -lt 100 -a $b -gt 15 ]
then
	echo "$a < 100 and $b > 15 :  return true"
else
	echo "$a < 100 and $b > 15 :  return false"
fi
if [ $a -lt 100 -a $b -gt 15 ]
then
	echo "$a < 100 and $b > 15 :  return true"
else
	echo "$a < 100 and $b > 15 :  return false"
fi
if [ $a -lt 100 -o $b -gt 15 ]
then
	echo "$a < 100 or $b > 100 :  return true"
else
	echo "$a < 100 or $b > 100 :  return false"
fi
if [ $a -lt 5 -a $b -gt 100 ]
then
	echo "$a < 5 or $b > 100 :  return true"
else
	echo "$a < 5 or $b > 100 :  return false"
fi
# 逻辑运算符,注意需要使用2个[[]]
a=10
b=20
if [[ $a -lt 100 && $b -gt 100 ]]
then
	echo "$a<100 && $b>100 : true"
else
	echo "$a<100 && $b>100 : false"
fi

if [[ $a -lt 100 || $b -gt 100 ]]
then
	echo "$a<100 || $b>100 : true"
else
	echo "$a<100 || $b>100 : false"
fi
## 字符串运算
a="abc"
b="efg"
if [ $a = $b ]
then
	echo "$a=$b : a=b"
else
	echo "$a=$b : a!=b"
fi

if [ $a != $b ]
then
	echo "$a!=$b : a!=b"
else
	echo "$a!=$b : a=b"
fi
if [ -z $a ]
then
	echo "-z $a : a length = 0"
else
	echo "-z $a : a length != 0"
fi
if [ -n "$a" ]
then
	echo "-n $a : a length != 0"
else
	echo "-n $a : a length =0"
fi
if [ $a ]
then
	echo "$a  : a !=null"
else
	echo "$a : a=null"
fi
