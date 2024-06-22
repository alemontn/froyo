# /usr/bin/froyo src/array.fy -oarray.sh -nnoComments -ywerror -ynoticeFroyo -ycomments
#!/usr/bin/env bash
# Arrays in Froyo
# For testing the compiler can properly handle arrays

# define array
declare -a -r myArray=('firstItem' 'secondItem' 'thirdItem')

echo "first =" "${myArray[0]}"
echo "third =" "${myArray[2]}"
echo "all =" "${myArray[@]}"
