#!/bin/sh

# for i in `ls`
for i in `find . -maxdepth 1 -type d`
do
    pushd $i
    git pull
    popd
done
