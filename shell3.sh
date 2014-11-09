#/bin/bash

echo $0
echo $#
[ "$#" -lt "3" ] && echo "less than 2"
echo $@
echo $1
echo $2
