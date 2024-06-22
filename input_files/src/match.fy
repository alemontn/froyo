/*
 * Match a provided value
 * tests the `if` & `switch` statements in Froyo
 */

include literal
include ask

// idk what to put here so yeah!
match_1: str, ro = "this is the first value that will be matched wow"
match_2: str, ro = "second value!!"
match_3: str, ro = "and the third one"

echo("available matches:" >&2)
// 1 to 3
foreach(i, {1..3})
{
  echo("*" "$i" "$(literal '$'match_$i)" >&2)
}

ask("your value:" input)

switch("$input")
{
  case($(literal "$match_1"))
  {
    echo("matched 1 from switch")
  }
  case($(literal "$match_2"))
  {
    echo("matched 2 from switch")
  }
  case($(literal "$match_3"))
  {
    echo("matched 3 from switch")
  }
  case()
  {
    echo("matched none from switch")
  }
}

matched: bool = false

foreach(i, {1..3})
{
  if (("$(literal '$'match_$i)" == "$input"))
  {
    echo("matched $i from if")
    matched = true
  }
}

if (($matched == false))
{
  echo("matched none from if")
}
