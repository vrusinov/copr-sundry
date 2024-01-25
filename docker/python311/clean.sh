#!/bin/sh

alias rm='rm -r'
set -e

rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libatomic.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libgcc.a
rm /usr/lib/gcc/x86_64-pc-linux-gnu/*/libstdc++fs.a
rm /usr/lib/python*/site-packages/_emerge
rm /usr/lib/python*/site-packages/gentoolkit*
rm /usr/lib/python*/site-packages/mesonbuild*
rm /usr/lib/python*/site-packages/portage*
rm /usr/lib/python*/unittest
rm /usr/lib/python3.*/test
