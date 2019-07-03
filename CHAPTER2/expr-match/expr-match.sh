#!/bin/bash
# HTML 파일에서 특정 속성값 얻기

quote="[\"']"
match="[^\"']*"

while read line
do
	href=$(expr "$line" : ".*HREF=${quote}\(${match}\)${quote}.*")
	if [ $? -eq 0 ]; then
		echo $href
	fi
done < info.html
