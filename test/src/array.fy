/*
 * Arrays in Froyo
 * For testing the compiler can properly handle arrays
 */

// define array
myArray: array, ro = ['firstItem', 'secondItem', 'thirdItem']

echo("first =" "$[0]myArray")
echo("third =" "$[2]myArray")
echo("all =" "$[@]myArray")
