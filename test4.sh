#!/bin/bash

open=file
close=file1
place=num
arg1=first
arg2=second
arg3=third

chmod +x script.sh
./script.sh $arg1 testfortext4.txt $arg2 $close $arg3 5
touch filename.txt
echo "Arsenovich 270 5 S
Eremin 270 5 S
Noskov 270 5 S
Ozornin 270 5 S
Ribkov 270 5 S" > filename.txt

if [ -z "$(diff -q filename.txt  $close)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi
