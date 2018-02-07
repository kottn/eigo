#!/bin/bash
test -n "$1" || echo "usage:           "
test -n "$1" || echo "  eigo <pattern> "
test -n "$1" || echo "  eigo ^<pattern>"
test -n "$1" || echo ""
test -n "$1" || exit 1

this_dir=$(cd $(dirname $0) && pwd)

if [[ "$1" == *[a-z]* || "$1" == *[0-9]* ]]; then
  \grep $1 $this_dir/../share/eigo/gene.txt -E -A 1 -i --color 
else
  \grep $1 $this_dir/../share/eigo/gene.txt -E -B 1    --color
fi
