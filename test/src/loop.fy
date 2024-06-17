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
  echo($i)
}
