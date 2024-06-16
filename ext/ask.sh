ask()
{
prompt=$1
ret=$2
  echo -n "$prompt"
  read $ret
}
