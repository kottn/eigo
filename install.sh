#!/bin/bash
cd $(dirname $0)

curl -LO http://www.namazu.org/~tsuchiya/sdic/data/gene95.tar.gz
tar zxfv *.tar.gz
find . -maxdepth 1 -type f -print0 | xargs -0 nkf --overwrite -w -Lu

ln -snfv ../share/eigo/eigo.sh ../../bin/eigo

