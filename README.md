# Froyo

![Build](https://github.com/alemontn/froyo/actions/workflows/make-deb.yml/badge.svg)

## WARNING

THIS LANGUAGE IS A WIP, VERY BASIC FEATURES
WILL NOT WORK PROPERLY.

## What?

Froyo is a "language" that compiles down to bash

## Compatibility

Officially, only Linux is supported but, in theory, any
Unix* system with bash installed should be compatible.

\* Cygwin (bash for Windows) being an exception

## Compilation

Froyo's compilation is more of a conversion than compiling
since Froyo's symbols are just turned into bash's

To compile Froyo source do:

  `froyo -o<OUT> src/myscript.fy`

To compile with 'werror' (warnings treated as errors):

  `froyo -o<OUT> -ywerror src/myscript.fy`

## Syntax

Here are some examples of Froyo's syntax

### Variables

```
hello: str, ro = "Hello world"
echo("$hello")
```

`str` (short-hand for `string`) and `ro` (short-hand for `readonly`)
are attributes applied to the value `hello`

Adding the `readonly` attribute makes the value a constant

### If statement

```
a: int, ro = 5
b: int, ro = 11
c: int, ro = 103

if (($b > $a))
{
  ...
} else if (($b = $a))
{
  ...
} else if (($c > $b))
{
  ...
} else
{
  ...
}
```

The `(())` condition (`eval` condition) is used for comparison
while the `()` condition (`run` condition) is used for executing
code

### Suffixed if statement

```
a: int, ro = 5
b: int, ro = 11
echo($a "is less than" $b) if (($a < $b))
```

Here, the `if` statement works exactly the same, instead just
being appended to the the end

(Note: currently only code can be used in a suffixed if
statement, defining a value is not (yet) implemented)

### For loop

```
include literal

min: int = 0
max: int = 9

foreach(i, $(literal {$min..$max}))
{
  echo($i)
}
```

The `{x..y}` expression is from bash, representing counting `x`
until `y`

### Switch statement

```
include ask

answer: int
ask("5+5 = ?" answer)

switch($answer)
{
  case(10)
  {
    echo("correct")
  }
  case(9)
  {
    echo("close")
  }
  case()
  {
    echo("incorrect")
  }
}
```
