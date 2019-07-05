#!/bin/bash
# gzip 명령어로 압축률 높이기



tar cf archive.tar log

# -9 옵션으로 압축률을 최대로 함
gzip -1 archive.tar
