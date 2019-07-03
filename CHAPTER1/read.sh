#!/bin/bash
# 키보드에서 사용자 키 입력을 획득해서 변숫값으로 이용하기

echo -n "Enter your ID: "
read id
echo -n "Enter your NAME: "
read name
echo -n "Enter your NUMBER: "
read number

echo "Now your ID is $id"
echo "NAME: $name, NUMBER: $number"

#read dummy : 스크립트를 일시정지 하고 싶을때 사용
