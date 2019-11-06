#!/bin/sh

echo "test"
exit_code=0

if ! grep --color=auto --recursive -P -n --include *.js --exclude-dir node_modules "hello" src/ 
then 
   exit_code=$((exit_code+1))
fi

if grep --color=auto --recursive -P -n --include *.js --exclude-dir node_modules "ciao" src/
then 
   echo "OK";
else
  exit_code=$((exit_code+1))
fi


echo $exit_code

exit exit_code
