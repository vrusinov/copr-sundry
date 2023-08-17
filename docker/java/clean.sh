#!/bin/sh

rm -r /usr/lib/python*
rm -rf /usr/lib64/binutils/x86_64-pc-linux-gnu/*/ldscripts
rm -rf /usr/lib64/gconv/IBM1388.so
rm -rf /usr/lib64/gconv/libGB.so
rm -rf /usr/lib64/gconv/libISOIR165.so
rm -rf /usr/lib64/perl5
rm -rf /usr/share/sgml/
rm /usr/bin/cmake
rm /usr/bin/cpack
rm /usr/bin/ctest
rm /usr/lib64/gconv/GB18030.so
rm /usr/lib64/gconv/IBM1371.so

# Remove this script:
rm -rf /usr/local
