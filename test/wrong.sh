#!/usr/bin/env bash
# /usr/bin/froyo src/wrong.fy -owrong.sh -ywerror -ynoerror -ynoticeFroyo -ycomment
declare -i -r thisInteger=notaninteger
declare -r thisFloat=x.y.z
declare -r thisBoolean=itstrue
declare -r thisCharacter=ab
declare -a -r thisArray=(first second third)
echo $thisInteger
echo ($thisFloat)
echo $thisBoolean

fn myFunction) firstArg
