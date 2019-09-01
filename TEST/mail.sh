#!/bin/bash

TO_EMAIL="xoqhdgh@naver.com"
SUBJECT="${1}번째 쉘스크립트 메일 전송"
EMAIL_MSG="본 메일은 쉘스크립트로 작성되었습니다."
echo "$EMAIL_MSG" | /bin/mail -s "$SUBJECT" "$TO_EMAIL"

