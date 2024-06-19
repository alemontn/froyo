#!/usr/bin/env bash
# /usr/bin/froyo src/hello.fy -ohello.sh -ywerror -ynoticeFroyo -ycomments
# Print grinting to user
# For testing compilation of Froyo source code
declare -r print_hello=true
hello()
{
# define greeting
local greeting
declare -r greeting="Hello world"
# print greeting to screen
echo $greeting
if [[ $print_hello == true ]]
then {
# return greeting
hello 
}
else {
echo "no greeting for you"
} fi
}
