/*
 * This file is purposely wrong to test if Froyo
 * can spot its errors or not
 */

include non-existent

thisInteger: int, ro = notaninteger
thisFloat: float, ro = x.y.z
thisBoolean: bool, ro = itstrue
thisCharacter: char, ro = ab
thisArray: array, ro = (first second third)

echo($thisInteger)
echo(($thisFloat))
echo($thisBoolean)
echo $thisArray

fn(myFunction) firstArg
{
  echo =($firstArg)
}
