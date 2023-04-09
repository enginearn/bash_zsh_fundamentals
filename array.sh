#!/bin/bash

# array
echo "Array:"
fruits=(apple banana grape orange peach)
echo $fruits
echo ${fruits}
echo ${fruits[0]}
echo ${fruits[1]}
echo ${fruits[2]}

countries=(Japan France Germany Finland)
echo ${countries[@]} # $``: "arg1" "arg2" "arg3" ... "n"
echo ${countries[*]} # $*: "arg1 arg2 arg3 ... n"

unset countries[1]

echo ${countries[@]}

prefectures=(Hokkaido Aomori [3]=Miyagi [5]=Yamagata Fukushima)
echo ${!prefectures[@]}

echo "key: value"
declare -A capitals=([Japan]=Tokyo [France]=Paris [Germany]=Berlin [Finland]=Helsinki)
echo "${capitals[@]}"
echo "${!capitals[@]}" # not working in zsh

echo file-{1001,1002}.txt
sudo mkdir $(pwd)/{test1,test2,test3}
sleep 1
sudo rm -fr $(pwd)/{test1,test2,test3}
echo file-{8..11}.txt

array=(file.tar.gz file.zip)
echo ${array[@]%%.*}
echo ${array%%.*}

array=(file.tar.gz flle.zip)
echo ${array[@]//./_}

date +%Y-%m-%d
echo $(date +%Y-%m-%d)
echo `date +%Y-%m-%d`

declare -i num
num=2+9
echo $num

((num++))
echo $num

echo "$(( $num < 100 ? 0 : 1 ))"
echo diff <(cat ${0:2}) <(cat array.sh)
