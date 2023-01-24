#!/bin/bash
K=1
#echo $# #number of arguments
#echo $0 #zero argument command being passed argv[0]
#echo $1 #argv[number of argument]

#echo ${!K}
#echo $@ #all of the arguments argv[1] to argv[$argc argument count - total number of actual arguments not argc itself]
#echo ${@: -1}
#echo ${@: -2}
#echo ${@: (-3):3}

while [ $K -le $# ]
do
#echo ${!K}
#[[ ${!K} =~ ^(.*)\.html$ ]]
#cp "${BASH_REMATCH[1]}.html" "${BASH_REMATCH[1]}.php"
[[ ${!K} =~ ^(.*)\.(.*)$ ]]
cp "${BASH_REMATCH[1]}.${BASH_REMATCH[2]}" "${BASH_REMATCH[1]}.php"
K=$((K+1))
done
