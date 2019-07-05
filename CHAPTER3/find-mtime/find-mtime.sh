#!/bin/bash
# 특정 디력터리에서 n일 전부터 m일 전까지 변경된 파일 목록 얻기

logdir="./log"

# 4일 전부터 2일 전가지 갱신된 파일 목록을 표시
find $logdir -name "*.log" -mtime -4 -mtime +1 -print
