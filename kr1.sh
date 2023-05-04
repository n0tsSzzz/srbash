#!/bin/bash

num1=0
num2=0
num3=0
for file in `cat 1.txt`
do
    num1=$(( $num1 + 1 ))
done

for file in `cat 2.txt`
do
    num2=$(( $num2 + 1 ))
done

for file in `cat 3.txt`
do
    num3=$(( $num3 + 1 ))
done

if [[ ("$num1" == "$num2") && ("$num2" == "$num3") && ("$num1" == "$num3") ]]; then
    echo "1"
else
    echo "2"
fi
