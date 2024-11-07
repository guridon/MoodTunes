#!/bin/sh
read -p "첫 번째 숫자를 입력하세요: " num1
read -p "두 번째 숫자를 입력하세요: " num2
read -p "연산자(+ 또는 -)를 입력하세요: " op

if [ "$op" = "+" ]; then
    echo "결과: $(($num1 + $num2))"
elif [ "$op" = "-" ]; then
    echo "결과: $(($num1 - $num2))"
else
    echo "유효하지 않은 연산자입니다."
fi
