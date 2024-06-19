fn empty("target")
{
  ret: int = 0

  if ((${#target} != 0))
  {
    ret = 1
  }

  return($ret)
}
