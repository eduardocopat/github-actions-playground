#!/bin/sh

echo "test"

if grep --color=auto --recursive -P -n --include *.js --exclude-dir node_modules "hello" src/
then 
   echo "OK";
else
   echo "NOT OK";
fi

if grep --color=auto --recursive -P -n --include *.js --exclude-dir node_modules "ciao" src/
then 
   echo "OK";
else
   echo "NOT OK";
fi
