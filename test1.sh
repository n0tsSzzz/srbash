#!/bin/bash

touch ans.txt

chmod +x script.sh
./script.sh -f testfortext1.txt -o ans.txt -t 5
touch filename.txt
echo "Arsenovich 300 3 G
Noskov 270 4 S
Eremin 269 2.5 N
Ribkov 150 5 G
Ozornin 100 2.5 S" > filename.txt

if [ -z "$(diff -q filename.txt  ans.txt)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi

rm -rf ans.txt