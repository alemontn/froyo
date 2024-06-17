fn abort(ret, message)
{
  red: local, ro = $'\e[1;31m'
  none: local, ro = $'\e[0m'

  // print provided message
  echo($red"error:"$none "$message")
  // exit on code
  return($ret)
}
