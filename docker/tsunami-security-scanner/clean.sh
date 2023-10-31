#!/bin/sh

alias rm='rm -r'

rm /opt/openjdk*/bin/rmiregistry
rm /opt/openjdk*/bin/serialver
rm /opt/openjdk*/bin/unpack200
rm /opt/openjdk*/legal
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/IBM*.so
rm /usr/lib64/gconv/libJISX0213.so
rm /usr/share/cmake/
rm /usr/share/doc/
rm /usr/share/misc/magic/

# Clean this script
rm -f /usr/local/bin/clean.sh
