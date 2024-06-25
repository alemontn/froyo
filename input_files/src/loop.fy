/*
 * For loop in Froyo
 * For testing the compiler
 */

min: int
max: int
a: int
b: int

include literal

// range from min to max
min = 0
max = 9

// loop through each number
foreach(i, $(literal "{$min..$max}"))
{
  echo(i, "=", $i)
}

a = 4
b = 8

while(($a != $b))
{
  // increment a by 1
  a ++
  echo(a, "+", 1)
}

// print final values
echo(a, "=", $a)
echo(b, "=", $b)
