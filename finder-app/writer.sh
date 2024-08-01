#!/bin/bash
writestr=$2
file="."
file+=$1
if [ -z $writefile ] || [ -z $writestr ]
then 
    echo "Arguments not specified"
    exit 1
else 
    mkdir -p "${file%/*}" && touch "$file"
    echo $writestr > $file
    exit 0
fi