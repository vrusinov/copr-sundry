#!/bin/sh

alias rm='rm -r'

set -e

rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/python*/site-packages/setuptools
rm /usr/lib64/gconv/GBBIG5.so
rm /usr/lib64/gconv/libGB.so
rm /usr/lib64/gconv/libISOIR165.so
