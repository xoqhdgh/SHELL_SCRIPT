#!/bin/bash
# 값이 정수인지 확인해서 계산하기

# 인수가 정수인지 확인
test "$1" -eq 0 2>/dev/null
# 명령행 인수가 0과 같으면 0
# 명령행 인수가 0이 아니면 1
# 명령행 인수가 0과 비교 불가능한 문자열이면 2

if [ $? -lt 2 ]; then
	echo "Argument is Integer"
	expr 10 + $1
else
	echo "Argument is not Integer"
	exit 1
fi

# expr $i + $j : 더하기
# expr $i - $j : 빼기
# expr $i \* $j : 곱하기
# expr $i / $j : 나누기
# expr 명령어는 정수가 아닌 값을 사칙 연산하면 에러가 발생한다.
