#!/bin/bash
# 암호 입력 시 사용자 키 입력을 표시하지 않기

username=guest
hostname=localhost

echo -n "Password: "
# 에코백 OFF(-echo)
stty -echo
read password
# 에코백 ON(echo)
stty echo

echo

# 입력한 암호로 내려받기
wget -q --password="$password" "ftp://${username}@${hostname}/filename.txt"
