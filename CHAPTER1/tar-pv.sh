#!/bin/bash
# 파일 압축 시 실행 상태를 표시하는 진행바 표시하기

#DATA_DIR=/myapp/datadir

#cd $DATA_DIR
tar cf - read.sh select.sh|pv|gzip > archive.tar.gz
