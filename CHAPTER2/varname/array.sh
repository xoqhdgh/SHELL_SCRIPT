# bash 배열 변수

declare -a number=("zero" "one" "two")
# 기대한 대로 배열 취득
echo ${number[0]}
# [1]이 문자열로 표시됨
echo $number[1]

