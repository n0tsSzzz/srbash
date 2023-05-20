#!/bin/bash

touch ans.txt

chmod +x script.sh
./script.sh -f testfortext4.txt -o ans.txt -t 5
touch filename.txt
echo "Arsenovich 270 5 S
Eremin 270 5 S
Noskov 270 5 S
Ozornin 270 5 S
Ribkov 270 5 S" > filename.txt

if [ -z "$(diff -q filename.txt  ans.txt)" ]; then
  echo "Тест пройден"
else
  echo "Тест провален"
fi

rm -rf ans.txt