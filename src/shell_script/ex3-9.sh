#!/bin/sh
db_file="DB.txt"
read -p "검색할 이름을 입력하세요: " search_name

# 검색된 모든 결과 출력
grep "$search_name" $db_file

# 검색 결과가 없을 때 메시지 출력
if [ $? -ne 0 ]; then
    echo "해당 이름의 정보가 없습니다."
fi
