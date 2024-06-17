none = $'\e[0m'
red = $'\e[1;31m'
yellow = $'\e[1;33m'

fn abort(ret, message)
{
  // print provided message
  echo($red"error:"$none "$message")
  // exit on code
  return($ret)
}

fn warn(message)
{
  echo($yellow"warning:"$none "$message")
}
