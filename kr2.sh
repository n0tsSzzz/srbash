#!/bin/bash


k=0
for file in `cat 1.txt`
do
    if grep -q -w "$file" 2.txt; then echo "nashlas $file"; exit 0; fi
done

for file in `cat 2.txt`
do
    if grep -q -w "$file" 3.txt; then echo "nashlas $file"; exit 0; fi
done

for file in `cat 3.txt`
do
    if grep -q -w "$file" 1.txt; then echo "nashlas $file"; exit 0; fi
done