#!/usr/bin/env bash
# /usr/bin/froyo src/drink.fy -odrink.sh -nnoComments -ywerror -ynoticeFroyo -ycomments
# Drinking age calculator
# Written in Froyo for testing its compiler

# module included @ /usr/lib/froyo/ext/ask.sh
ask()
{
prompt="$1"; shift
ret=$1; shift
echo -n "$prompt "
read $ret
}

echo "* drinking age calculator *"
# Prompt user
ask "how old are you?" age

# Legal age in the UK is 18 but varies from country 2 country
if [[ $age -ge 18 ]]
then {
echo "you can legally drink!"
}
elif [[ $age -ge 16 ]]
then {
echo "you're almost old enough to legally drink"
}
else {
# boo hoo
echo "you're not old enough to drink legally yet"
} fi
