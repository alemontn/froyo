/*
 * Arrays in Froyo
 * For testing the compiler can properly handle arrays
 */

// define array
myArray: array, ro = ['firstItem', 'secondItem', 'thirdItem']

echo("first =" "${myArray[0]}")
echo("third =" "${myArray[2]}")
echo("all =" "${myArray[@]}")
