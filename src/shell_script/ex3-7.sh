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
    mkdir "subfolder_$i"
    ln -s "$(pwd)/file_$i.txt" "$(pwd)/subfolder_$i/file_$i.txt"
    i=$(($i + 1))
done

echo "파일과 하위 폴더가 생성되고 파일이 링크되었습니다."
