/*
 * For loop in Froyo
 * For testing the compiler
 */

include literal

// range from min to max
min: int = 0
max: int = 9

// loop through each number
foreach(i, $(literal "{$min..$max}"))
{
  echo(i "=" $i)
}

a: int = 4
b: int = 8

while(($a != $b))
{
  // increment a by 1
  a ++
}

// print final values
echo(a "=" $a)
echo(b "=" $b)
