#!/bin/bash

touch ans.txt

chmod +x script.sh
./script.sh -f testfortext2.txt -o ans.txt -t 5
touch filename.txt
echo "Arsenovich 300 3 G
Eremin 270 5 N
Noskov 270 4 S
Ribkov 150 5 G
Ozornin 150 2.5 S" > filename.txt

if [ -z "$(diff -q filename.txt  ans.txt)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi

rm -rf ans.txt