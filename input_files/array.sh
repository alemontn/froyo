#!/usr/bin/env bash
# /usr/bin/froyo src/array.fy -oarray.sh -nnoComments -ywerror -ynoticeFroyo -ycomments
# Arrays in Froyo
# For testing the compiler can properly handle arrays

# define array
declare -a -r myArray=('firstItem' 'secondItem' 'thirdItem')

echo "count first =" ${#myArray[0]}
echo "first =" "${myArray[0]}"
echo "third =" "${myArray[2]}"
echo "all =" "${myArray[@]}"
