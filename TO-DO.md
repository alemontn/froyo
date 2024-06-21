# TO DO

## Sorted by priority (most->least)

* Test source `wrong.fy` does not pick up on all errors - notably:
   - Extra argument `firstArg` not inside parenthesis (invalid syntax)

   - Double braces/"eval" (`((`) instead of single/"run" (`(`) being
     used to provide arguments

   - Extra '=' & space in function argument

   - No braces provided for `echo $thisArray`

* Interpreted by line-by-line meaning you can't do things like
  append a comment to the end of code or have more than code
  on one line and must instead use a newline to

* The output bash file is quite messy mostly because of the lack
  of the tabs/indents

* Cannot use custom variable notation (e.g. should be `$@array`
  instead of `${array[@]}`) because of how compilation is
  currently done

* (There's lots more bugs that haven't been found yet)
