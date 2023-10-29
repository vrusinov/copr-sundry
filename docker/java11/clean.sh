#!/bin/sh

rm -rf /usr/lib64/gconv/libISOIR165.so
rm -rf /usr/lib64/perl5
rm -rf /usr/share/sgml/
rm /opt/openjdk-bin-*/man -r
rm /usr/lib/python* -r
rm /usr/lib64/gconv/GB18030.so
rm /usr/lib64/gconv/IBM1371.so
rm /usr/lib64/gconv/IBM1388.so
rm /usr/lib64/gconv/JOHAB.so
rm /usr/lib64/gconv/libGB.so
rm /usr/lib64/gconv/SHIFT_JISX0213.so
rm /usr/lib64/gconv/TSCII.so

# Remove this script:
rm -rf /usr/local
