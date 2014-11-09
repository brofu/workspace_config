
#!/bin/base

# Usage:
#     This script is used to

# Version:
#     1.0 20141104

# Author:
#     geoffrey ISPCFS@gmail.com

# Update History:
#     2014/11/04 draft



#PATH=
#export $PATH
test=0
base_line=100000
while [ "$test" -lt "$base_line" ]
do
    read -p 'input number' test
    echo -e $test
done
