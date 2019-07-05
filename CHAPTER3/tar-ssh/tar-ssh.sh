#!/bin/bash
# 로컬 디렉터리에 파일을 만들지 않고 직접 원격 호스트에 아카이브하기

username="xoqhdgh"
server="155.230.64.132"

tar cvf - myapp/log | ssh ${username}@${server} "cat > /home/xoqhdgh/backup/myapplog.tar"
