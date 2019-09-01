#!/bin/bash

x_tag=0

while getopts "x" option
do
        case $option in
                x)
                        x_tag=1
                        ;;
                \?)
                        echo "Usage : button.sh [-x] process_name" 1>&2
                        exit 1
                ;;
        esac
done

shift $(expr $OPTIND - 1)
process_name="$1"

if [ $x_tag -eq 1 ]; then
        pgrep -f $process_name | { read var; kill -9 $var ;}
else
        pgrep -f $process_name | { read var; kill -18 $var ;}
fi

