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
  echo $i
}
  done
