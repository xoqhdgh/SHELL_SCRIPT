#!/bin/bash
# HTML 파일인 .htm과 .html 확장자를 txt로 일괄 변경하기

for filename in *
do
	case "$filename" in
		*.htm | *.html)
			# 파일명 앞부분을 취득(index)
			headname=${filename%.*}

			# 파일명을 .txt로 변환
			mv "$filename" "${headname}.txt"
		;;
	esac
done

# 동일한 명령어
rename .htm .txt *.htm
rename .html .txt *.html
