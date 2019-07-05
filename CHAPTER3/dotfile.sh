#!/bin/bash
# .svn 등 숨은 파일과 디렉터리만 나열하기

IFS_default=$IFS
# IFS에 줄바꿈 설정(파일명에 스페이스가 포함될 때를 대비)
IFS='
'

#현재 디렉터리 아래에 있는 파일을 $filename으로 순서대로 처리
for filename in $(ls -AF)
do
	case "$filename" in
	.*/)
		echo "dot directory: $filename"
	;;
	.*)
		echo "dot file: $filename"
	;;
	esac
done

IFS=$IFS_default
