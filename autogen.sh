#!/bin/sh

mkdir -p autotools

aclocal
if [ "$(uname)" == "Darwin" ]; then
	glibtoolize
else
	libtoolize
fi
autoheader
automake -a
autoconf
automake -a

./configure $@

