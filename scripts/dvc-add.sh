#!/bin/bash
dir=$1

if test "x$dir" = x; then
    dir=`/dvc`
	echo "No directory specified --> /dvc"
fi

echo "adding $dir to dvc"
dvc add $dir --to-remote

exit
