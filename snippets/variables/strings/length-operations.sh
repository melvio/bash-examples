#!/usr/bin/env bash

### length operations ###

if [[ -z "" ]] ; then
  echo "-z received an empty string"
fi
# -z received an empty string

if [[ -n "Rene Laennec" ]] ; then
  echo "-n received a non-empty string"
fi
# -n received a non-empty string


invention="stethoscope"
echo "${#invention}" # 11

year=1816
echo "${#year}" # 4
