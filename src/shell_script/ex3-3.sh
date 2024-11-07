#!/bin/sh
read -p "몸무게(kg)를 입력하세요: " weight
read -p "신장(m)를 입력하세요: " height

bmi=$(echo "$weight / ($height * $height)" | bc -l)

echo "BMI: $bmi"
if [ $(echo "$bmi < 18.5" | bc) -eq 1 ]; then
    echo "저체중입니다."
elif [ $(echo "$bmi >= 18.5" | bc) -eq 1 ] && [ $(echo "$bmi < 23" | bc) -eq 1 ]; then
    echo "정상 체중입니다."
else
    echo "과체중 또는 비만입니다."
fi
