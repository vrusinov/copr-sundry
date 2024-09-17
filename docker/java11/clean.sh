#!/bin/sh

set -e

alias rm='rm -r'

rm /opt/openjdk-bin-*/man
rm /usr/lib/python*
rm /usr/lib64/gconv/EUC-JISX0213.so
rm /usr/lib64/gconv/ISO-2022-KR.so
rm /usr/lib64/gconv/ISO8859-6.so
rm /usr/lib64/gconv/JOHAB.so
rm /usr/lib64/gconv/SHIFT_JISX0213.so
rm /usr/lib64/gconv/TSCII.so
rm /usr/share/gtk-doc/

# Remove this script:
rm -rf /usr/local
