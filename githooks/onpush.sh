#!/bin/sh

./configure --enable-single-host CC="gcc -no-pie"
make
make check

cd bench

rm -rf results.Gambit*

time ./bench -r 1 gambit all
