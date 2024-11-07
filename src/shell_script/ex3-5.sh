#!/bin/sh

echo "프로그래밍을 시작합니다."

execute_command() {
    ls $@
}

read -p "ls 명령어 옵션을 입력하세요: " options
execute_command $options

echo "프로그래밍을 종료합니다."
