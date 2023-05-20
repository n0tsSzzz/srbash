#!/bin/bash

open=file
close=file1
place=num
arg1=first
arg2=second
arg3=third

chmod +x script.sh
./script.sh $arg1 testfortext1.txt $arg2 $close $arg3 5
touch filename.txt
echo "Arsenovich 300 3 G
Noskov 270 4 S
Eremin 269 2.5 N
Ribkov 150 5 G
Ozornin 100 2.5 S" > filename.txt

if [ -z "$(diff -q filename.txt  $close)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi
