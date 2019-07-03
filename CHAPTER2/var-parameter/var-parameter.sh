#!/bin/bash
# 실행 시 변숫값이 비어 있을 때 기본값을 정의해서 설정하기

cp largefile.tar.gz ${TMPDIR:=/tmp}

# cp largefile.tar.gz ${TMPDIR:-/tmp}
# $TMPDIR은 원래 값이 NULL이면 NULL인 채로 그대로 둠

# ${MYDIR:?셸변수 MYDIR이 설정되어 있지 않음}
# 셸 변수 MYDIR을 확인, 미정의 또는 비었으면 에러 종료

# flg=${MYDIR:+1}
# 셸 변수 MYDIR을 확인, 빈 문자열이 아닌 값이면 플래그 flg를 1로 설정
cd $TMPDIR
tar xzf largefile.tar.gz

echo "Extract files to $TMPDIR."
