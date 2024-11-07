#!/bin/sh
read -p "출력할 횟수를 입력하세요: " count
i=1
while [ $i -le $count ]
do
    echo "Hello, World!"
    i=$(($i + 1))
done
