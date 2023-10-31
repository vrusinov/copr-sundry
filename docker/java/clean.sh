#!/bin/sh

alias rm='rm -r'

rm /opt/openjdk-bin-*/legal
rm /usr/bin/cmake
rm /usr/bin/cpack
rm /usr/bin/ctest
rm /usr/lib/python*
rm /usr/lib64/binutils/x86_64-pc-linux-gnu/*/ldscripts
rm /usr/lib64/gconv/GB18030.so
rm /usr/lib64/gconv/IBM1371.so
rm /usr/lib64/gconv/IBM1388.so
rm /usr/lib64/gconv/libGB.so
rm /usr/lib64/gconv/libISOIR165.so
rm /usr/lib64/perl5
rm /usr/share/sgml/

# Remove this script:
rm -rf /usr/local
