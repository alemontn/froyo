/*
 * Drinking age calculator
 * Written in Froyo for testing its compiler
 */

include ask

echo("* drinking age calculator *")
// Prompt user
ask("how old are you?", age)

// Legal age in the UK is 18 but varies from country 2 country
if (($age >= 18))
{
  echo("you can legally drink!")
} else if (($age >= 16))
{
  echo("you're almost old enough to legally drink")
} else
{
  // boo hoo
  echo("you're not old enough to drink legally yet")
}
