/*
 * Print grinting to user
 * For testing compilation of Froyo source code
 */

print_hello: boolean, ro = true

fn hello()
{
  // define greeting
  greeting: string, ro, local = "Hello world"

  // print greeting to screen
  echo($greeting)
}

if (($print_hello == true))
{
  // return greeting
  hello()
} \
else
{
  echo("no greeting for you")
}
