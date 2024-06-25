#!/usr/bin/env bash
# /usr/bin/froyo src/loop.fy -oloop.sh -nnoComments -ywerror -ynoticeFroyo -ycomments
# For loop in Froyo
# For testing the compiler

declare -i min
declare -i max
declare -i a
declare -i b

# module included @ /usr/lib/froyo/ext/literal.sh
literal()
{
obj=("$@")
eval echo "$obj"
}

# range from min to max
min=0
max=9

# loop through each number
for i in $(literal "{$min..$max}")
do {
echo i "=" $i
} done

a=4
b=8

while [[ $a -ne $b ]]
do {
# increment a by 1
a+=1
echo a "+" 1
} done

# print final values
echo a "=" $a
echo b "=" $b
