#!/bin/sh

alias rm='rm -r'

rm /etc/udev/
rm /opt/openjdk*/legal/
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/BIG5*.so
rm /usr/lib64/gconv/IBM*.so
rm /usr/lib64/gconv/libJISX0213.so
rm /usr/share/cmake/
rm /usr/share/doc/
rm /usr/share/misc/magic/

# Clean this script
rm -f /usr/local/bin/clean.sh
