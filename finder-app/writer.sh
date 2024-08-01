#!/bin/bash
writestr=$2
file=$1

echo $file
echo $writestr

if [ -z $file ] || [ -z $writestr ]
then 
    echo "writer: Arguments not specified"
    exit 1
else 
    mkdir -p "${file%/*}" && touch "$file"
    echo $writestr > $file
    exit 0
fi