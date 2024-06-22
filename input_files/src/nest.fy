/*
 * Nested functions, if statements & while loops in Froyo
 * to test if the compiler can detect when the nests end
 */

fn level_1("run")
{
  fn level_2()
  {
    echo("this is level 2")
    fn level_3()
    {
      echo("this is the third & final level")
    }
  }
  eval("$run")
}

level_1(level_2)

// it might be true
is_true: bool, ro = true
is_str: str, ro = "This is a string"

if (($is_true == true))
{
  if (($is_str == "This is a string"))
  {
    echo("ok")
  } \
  else
  {
    echo("no :(")
  }
}
