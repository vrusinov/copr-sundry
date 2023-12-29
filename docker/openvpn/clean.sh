#!/bin/sh

alias rm='rm -r'

rm -rf /usr/lib/python*/
rm -rf /usr/lib64/perl5
rm /usr/lib64/gconv/

# Remove this script:
rm -f /bin/clean.sh
