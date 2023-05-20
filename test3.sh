#!/bin/bash

touch ans.txt

chmod +x script.sh
./script.sh -f testfortext3.txt -o ans.txt -t 5
touch filename.txt
echo "Eremin 270 5 G
Noskov 270 5 S
Arsenovich 270 5 N
Ribkov 150 5 G
Ozornin 150 5 S" > filename.txt

if [ -z "$(diff -q filename.txt  ans.txt)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi

rm -rf ans.txt