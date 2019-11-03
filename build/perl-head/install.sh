#!/bin/bash

. ../init.sh

PREFIX=/opt/wandbox/perl-head

# get sources

cd ~/
git clone --depth 1 --branch blead https://github.com/Perl/perl5.git perl
cd perl

# build

./Configure -des -Dprefix=$PREFIX -Dusedevel

make -j2
rm -r $PREFIX || true
make install

ln -s $PREFIX/bin/perl5.* $PREFIX/bin/perl
