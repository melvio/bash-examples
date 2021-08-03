#!/usr/bin/env bash 

return0() {
  echo "in return0"
  return 0
}
return1() {
  echo "in return1"
  return 1
}


echo "--"
# return1 returns the value 1
# 1 is considered to be false, so we execute return0
if return1 || return0 ; then
  echo "True"
fi
# in return1
# in return0
# True


echo "--"
# return0 returns 0
# 0 is considered to be true, so we skip calling return1
if return0 || return1 ; then
  echo "True"
fi
# in return0
# True


echo "--"
# return1 is false twice so skip the if-block
if return1 || return1 ; then
  echo "True"
fi
# in return 1
# in return 1

echo "--"
# return1 returns 'false' so we don't check return0
if return1 && return0 ; then
  echo "True"
fi
# in return1



echo "--"
# return0 returns 'true' so we check return1
# return1 returns 'false' so we skip the if block
if return0 && return1 ; then
  echo "True"
fi
# in return0
# in return1


echo "--"
# return0 returns true twice
if return0 && return0 ; then
  echo "True"
fi
#in return0
#in return0
#True


echo "--"
# && and || have equal precedence so you can resolve this from left to right
if return1 || return0 && return1 ; then
  # resolving logic: (with False=1 and True=0)
  #   {return1 => False}
  # if False || return0 && return1
  #   {return0 => True}
  # if False || True && return1
  #   {resolve ||}
  # if True && return1
  #   {return1 => False}
  # if True && False
  #   {resolve && }
  # if False
  echo "True"
fi
#in return1
#in return0
#in return1



