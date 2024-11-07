#!/bin/sh
db_file="DB.txt"

read -p "이름을 입력하세요: " name
read -p "생일 또는 전화번호를 입력하세요: " info

echo "$name: $info" >> $db_file
echo "정보가 DB.txt에 추가되었습니다."
