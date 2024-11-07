#!/bin/sh
read -p "명령어를 입력하세요 (start/stop/restart): " command

case $command in
    start)
        echo "서비스 시작"
        ;;
    stop)
        echo "서비스 중지"
        ;;
    restart)
        echo "서비스 재시작"
        ;;
    *)
        echo "알 수 없는 명령어입니다."
        ;;
esac
