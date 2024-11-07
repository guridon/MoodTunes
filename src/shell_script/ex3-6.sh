#!/bin/sh
read -p "폴더 이름을 입력하세요: " folder

if [ ! -d "$folder" ]; then
    mkdir "$folder"
    echo "$folder 폴더가 생성되었습니다."
fi

cd "$folder"
i=1
while [ $i -le 5 ]
do
    touch "file_$i.txt"
    i=$(($i + 1))
done

tar -czf files.tar.gz *.txt

new_folder="${folder}_unzipped"
mkdir "$new_folder"
tar -xzf files.tar.gz -C "$new_folder"

echo "파일들이 압축 해제되었습니다."
