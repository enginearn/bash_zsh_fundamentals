#!/bin/zsh

if [ "${1:l}" = yes ]; then
    echo "Input: ${1:l}"
    echo YES
else
    echo "Input: ${1:l}"
    echo NO
fi

if cd "$2"; then
    echo SUCCESS!
else
    echo failed...
fi

answer=yes
# test "$answer" = 'yes' 
[ "$answer" = 'yes' ]
echo $?

str1=abc
str2=xyz

if [ "$str1" < "$str2" ]; then
    echo '$str1 < $str2: ' "$str1 '<' $str2"
else
    echo '$str1 > $str2: ' "$str1 '>' $str2"
fi

if [ "(" "$str1" = "$str2" ")" ]; then
    echo YES
else
    echo NO
fi

file="$1"
if [ -e "$file" ]; then
    :
else
    touch "$file"
    sleep 1
    rm $file
fi

file="$1"
# if [ -n "$file" -a ! -e "$file" ]; then
if [ -n "$file" ] && [ ! -e "$file" ]; then
    touch "$file"
    sleep 1
    rm $file
fi

str1=xxx
str2=yyy
if [[ $str1 = $str2 ]]; then
    echo YES
else
    echo NO
fi

x=6
if [[ $x -gt 3 && $x -lt 7 ]]; then
    echo 'x > 3 AND x < 7'
else
    echo 'x <= 3 OR x >= 7'
fi

str1=
str2=xxx
if [[ $str1 = $str2 ]]; then
    echo Yes
else
    echo No
fi

str1=xxx
if [[ $str1 == x* ]]; then
    echo Yes
else
    echo No
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

path=/home/rocky
if [[ $path =~ ^/home/[^/]+$ ]]; then
    echo "$path == $HOME"
else
    echo "$HOME"
fi

# loops
echo "loops:"
for i in aaa bbb ccc
do
    echo $i
done

for file in $"{ls}"
do
    if [[ -e $file && ${file##*.} =~ [z]?sh$ ]]; then
        echo "$file is script file!"
    else
        echo "else block!"
    fi
done

file="array.zsh"
if [[ -e $file && ${file##*.} =~ [z]?sh$ ]]; then
    echo "Found $file!"
else
    echo "Not matched!"
fi

for i in "$@"
do
    echo $i
done
