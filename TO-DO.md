# TO DO

### The to-do list is sorted from most priority to least

### Some factors that may determine priority include:

### - A bug being easier to fix / a feature being easier
###   to implement

### - A bug causing break-age of a very basic feature

### - A basic feature not yet being implemented

## Features

* Test source `wrong.fy` does not pick up on all errors - notably:
   - Extra argument `firstArg` not inside parenthesis (invalid syntax)

   - Double braces/"eval" (`((`) instead of single/"run" (`(`) being
     used to provide arguments

   - Extra '=' & space in function argument

   - No braces provided for `echo $thisArray`

* Debugging options are limited, should add a `--debug` or
  `--verbose` parameter

* The output bash file is quite messy mostly because of the lack
  of the tabs/indents

* Interpreted by line-by-line meaning you can't do things like
  append a comment to the end of code or have more than code
  on one line and must instead use a newline to

* Cannot use custom variable notation (e.g. should be `$@array`
  instead of `${array[@]}`) because of how compilation is
  currently done

## Bugs

* Sometimes, when an `if` statement ends, the ending `} fi` will
  be repeated, no idea what is causing this, more debugging will
  have to be done
