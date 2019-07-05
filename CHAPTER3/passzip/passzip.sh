#!/bin/bash
# 중요한 파일을 암호 걸어서 zip으로 아카이브하기

logdir="myapp"

cd "$logdir"

# myapp/log 디렉터리에 있는 로그 파일을
# 암호 걸린 zip으로 아카이브
zip -e -r log.zip log
