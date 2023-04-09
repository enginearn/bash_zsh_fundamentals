#!/bin/bash

if [ "${1,,}" = yes ]; then
    echo YES
else
    echo NO
fi

read -p "Enter words: " words
echo $words
echo "${words,,}"

str1=abc
str2=xyz

if [ "$str1" '<' "$str2" ]; then
    echo '$str1 < $str2: ' $str1 < $str2
else
    echo '$str1 > $str2: ' $str1 > $str2
fi

if [ "(" "$str1" = "$str2" ")" ]; then
    echo YES
else
    echo NO
fi

str1=xyz
pattern='x*'
if [[ $str1 == $pattern ]]; then
    echo Yes
else
    echo No
fi

str1=xyz
pattern='x*'
if [[ $str1 == "$pattern" ]]; then
    echo Yes
else
    echo No
fi

for file in *.*
do
    if [[ ! -e $file ]]; then
        echo "$file doesn\'t exist"
    else
        echo "$file exists!"
    fi
done

for file in $(ls)
do
    if [[ -e $file && ${file##*.} =~ [z]?sh$ ]]; then
        echo "$file is a script file!"
    else
        echo "$file あります！" 
    fi
done

file="array.sh"
# `-e` は不要(ファイルではないので)
if [[ $file && ${file##*.} =~ [z]?sh$ ]]; then
    echo "$file"
fi

echo "${file##*.}"
