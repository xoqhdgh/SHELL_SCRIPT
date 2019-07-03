#!/bin/bash
# HTML 파일에서 택 속에 적힌 주석을 추출해서 그대로 실행하기

filename="myapp.log"
eval $(sed -n "s/<code>\(.*\)<\/code>/\1/p" command.htm)

