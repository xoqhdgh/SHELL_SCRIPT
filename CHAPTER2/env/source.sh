#!/bin/bash
# 변수나 함수를 외부 파일로 작성하기

. ./env.sh
# source ./env.sh
# sh env.sh로 셀 스크립트를 실행할 때는 현재 셸과는 다른 프로세스로 동작
# 변수는 이어받지 않습니다.

nowtime
cp -i -v largefile.tar.gz "$WORK_DIR"
nowtime
