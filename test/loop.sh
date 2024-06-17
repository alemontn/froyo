#!/usr/bin/env bash
# /usr/bin/froyo src/loop.fy -oloop.sh -ywerror -ynoticeFroyo -ycomments
# For loop in Froyo
# For testing the compiler
# module included @ /usr/lib/froyo/ext/literal.sh
literal()
{
  obj="$1"
  eval echo $obj
}
# range from min to max
declare -i min=0
declare -i max=9
# loop through each number
for i in $(literal "{$min..$max}")
do {
  echo i "=" $i
} done
  declare -i a=4
  declare -i b=8
while [[ $a != $b ]]
do {
    # increment a by 1
    a+=1
  } done
    # print final values
    echo a "=" $a
    echo b "=" $b
