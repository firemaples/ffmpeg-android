#!/bin/bash

echo "============================================"
echo "Updating submodules"
git submodule update --init
echo "============================================"
echo "Updating libpng, expat and fribidi"
rm -rf libpng-*
rm -rf expat-*
rm -rf fribidi-*
rm -rf lame-*
rm -rf fdk-aac-*

wget -O- https://ftp.osuosl.org/pub/blfs/conglomeration/libpng/libpng-1.6.21.tar.xz | tar xJ
wget -O- http://downloads.sourceforge.net/project/expat/expat/2.1.0/expat-2.1.0.tar.gz | tar xz
wget -O- http://fribidi.org/download/fribidi-0.19.7.tar.bz2 | tar xj
wget -O- http://sourceforge.net/projects/lame/files/lame/3.99/lame-3.99.5.tar.gz | tar xz
#wget -O- https://github.com/mstorsjo/fdk-aac/archive/v0.1.5.tar.gz | tar xz
echo "============================================"
