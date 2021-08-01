#!/usr/bin/env bash

check_input() {
  if [[ "$#" -ne 1 ]] ; then
    echo "please provide 1 argument"
    exit 1
  fi
}
check_input "$@"

argument="$1"
mycmd_impl() {
  if [[ "${argument}" == "now" ]] ; then
    echo "The time is $(date "+%H%M"). Now it is 'You Time'"
  elif [[ "${argument}" == "chaos" ]] ; then
    echo "Remember: Whatever you have to todo:"
    echo ""
    echo "  'Every snowflake falls in its appropriate place.'"
    echo ""
  elif [[ "${argument}" == "todos" ]]; then
    echo "1. pet the dog"
    echo "2. take care of yourself"
  elif [[ "${argument}" == "weather" ]] ; then
    curl "wttr.in"
  fi
}
mycmd_impl "${argument}"


