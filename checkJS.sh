#!/bin/sh

echo "test"
grep --color=auto --recursive -P -n --include *.js --exclude-dir node_modules "[^\x00-\x7F]+" /

