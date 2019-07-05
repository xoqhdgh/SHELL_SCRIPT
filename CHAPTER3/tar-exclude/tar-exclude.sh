#!/bin/bash
# tar 아카이브할 때 일부 파일이나 디렉터리 제외하기

tar cvf archive.tar --exclude ".svn" myapp

# 제외하고 싶은 파일이 많다면 -X 옵션으로 외부 파일로 제외 목록을 적용할 수 있습니다.
# tar cvf archive.tar -X exclude.lst myapp
