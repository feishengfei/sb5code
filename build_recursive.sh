#!/bin/sh

for dir in $(find Linux -name Makefile -type f | xargs dirname);do
    pushd $dir
    make clean
    make &
    popd
done
