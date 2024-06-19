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
hello: str, readonly = "Hello world"
echo("$hello")
```

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

### Suffixed if statement

```
a: int, ro = 5
b: int, ro = 11
echo($a "is less than" $b) if (($a < $b))
```

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
