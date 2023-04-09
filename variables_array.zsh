#!/bin/zsh

directory=${HOME}
ls $directory

# empty valiable
empty=
echo $empty

printenv

CONFIG_FILE=$HOME/fake.conf
export CONFIG_FILE
./config.sh

echo $BASH_VERSION
echo $ZSH_VERSION
echo $LINENO
locale

# IFS: Internal Field Separator
# od: show as octal number
echo "$IFS" | od -a
echo "$IFS" | od

# positional params
echo "arg0: $0"
echo "arg1: $1"
echo "arg2: $2"
echo "arg3: $3"

# special params
echo "\$#: $#" # positional param count
echo "\$?: $?" # status 0: success others: error
echo "\$$: $$" # process id
echo "\$!: $!" # background process id

tempfile="$(pwd)/tmp/script_tmp_$$"
echo $tempfile
# touch $tempfile

# declare
# -r: readonly
# -i: integer
# -a: array
# -A: key: value

name=file1
declare -r name
echo $name
# readonly name
# readonly name=file1
# name=file2
# echo $name

declare -i num=5
echo $num
echo $num+1000

x=5
y=8
declare -i num
num=5+8
echo $num

num=5+1000
echo $num

# array
echo "Array:"
fruits=(apple banana grape orange peach)
echo $fruits
echo ${fruits}
echo "array index starts with 1 in zsh!\n${fruits[0]}" # array index starts with 1 in zsh! 
echo ${fruits[1]}
echo ${fruits[2]}
echo "element num: $#fruits"

prefectures=(Hokkaido Aomori [3]=Miyagi [5]=Yamagata Fukushima)
echo $prefectures
echo ${prefectures[0]}
echo ${prefectures[1]}
echo ${prefectures[2]}
echo ${prefectures[3]}
echo ${prefectures[4]}
echo ${prefectures[5]}
echo ${prefectures[6]}

countries=(Japan France Germany Finland)
echo ${countries}

# remove first element in array
countries=("${(@)countries:1}")

echo $countries

prefectures=(Tokyo Osaka "$prefectures")
echo $prefectures

prefectures=("$prefectures" Fukuoka Okinawa)
echo $prefectures

prefectures+=(Kyoto Oita)
echo $prefectures

# echo ${!prefectures} # not working in zsh

# key: value
declare -A user=([id]=5 [first_name]=John [last_name]=Smith)
echo ${user[id]}
echo ${user[first_name]}
echo ${user[last_name]}

declare -A capitals=([Japan]=Tokyo [France]=Paris [Germany]=Berlin [Finland]=Helsinki)
echo $capitals
# echo "${!capitals}" # not working in zsh

ls *.??
ls *.???

echo file-{1001,1002}.txt

sudo mkdir $(pwd)/{test1,test2,test3}
sleep 1
sudo rm -fr $(pwd)/{test1,test2,test3}
echo file-{8..11}.txt
echo file-{c..g}.md

echo ${your_name:-John}

your_name=marine
echo ${your_name:-Smith}

ls ${1:-/}

your_name=
echo ${your_name-John}
your_name=aqua
echo ${your_name-Smith}

echo ${your_name:=Anthony}
echo $your_name
your_name=ann
echo ${your_name:=Anthony}
your_name=
echo ${your_name:=Anthony}

# cd ${dir:?You must specify directory}
# cd ${dir:?}
echo ${your_name:+アノニマス}

echo ${whereami:=$(pwd)}

echo ${whereami:1}
echo ${whereami: -2}
echo ${whereami:3:2}
echo ${whereami: -3:3}
array=(abc def ghi jkl mno pqr stu vwx yz)
echo ${array:1}
echo ${array:1:3}

prif1=Aomori
# 前方一致したものを取り除いて返す
echo ${prif1#Ao}
prif2=Akita
echo ${prif2#Ao}
file=file.tar.gz
echo ${file#*.}
echo ${file##*.}

# 後方一致したものを取り除いて返す
echo ${file%.*}
echo ${file%%.*}

path=$(pwd)/${0:2} # file name
echo $path
echo ${path%/*}
echo ${path##*/}

array=(file.tar.gz file.zip)
echo ${array[@]%%.*}
echo ${array%%.*}

echo ${file/./_}
echo ${file//./_}
echo ${file/.*/.txt}

file=file.html
echo ${file/%.html/.bak}
file=file.html.org
echo ${file/%.html/.bak}

array=(file.tar.gz flle.zip)
echo ${array//./_}

date +%Y-%m-%d # not working in zsh so far
echo $(date +%Y-%m-%d) # not working in zsh so far
echo `date +%Y-%m-%d` # not working in zsh so far

declare -i num
num=2+9
echo $num

((num++))
echo $num
((num--))
echo $num
((++num))
echo $num
((--num))
echo $num

echo "$(( $num > 100 ? 0 : 1 ))"
# echo "$(( $num -eq 100 ? true : false ))" # bash doesn't have true/false

((a=5+3))
echo $a
(( b = 3 * 4 ))
echo $b

x=9
y=8
(( z = x ** y ))
echo $z

(( x = 5 * 5 ))
echo $x

x=6+2
echo $x
(( 5 > 3 ))
echo "終了ステータス: $?"
(( 5 < 3 ))
echo "終了ステータス: $?"

let x=5+3
echo "let x: $x"

let 'x = 6 >> 1'
echo "let x: $x"

x=6
y=9
z=$(( x ** y ))
echo $z

# diff <(cat ${0:2}) <(cat array.sh) # not work in zsh?
