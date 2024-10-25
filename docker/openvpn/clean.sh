#!/bin/sh

alias rm='rm -r'
set -e

rm /usr/bin/gpg
rm /usr/lib/python*/
rm /usr/lib64/binutils/
rm /usr/lib64/gconv/
rm /usr/lib64/tcl*

# Remove this script:
rm -f /bin/clean.sh
