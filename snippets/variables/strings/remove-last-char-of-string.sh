#!/usr/bin/env bash

# https://www.emporis.com/statistics/most-expensive-health
expensive_hospital="Royal Adelaide Hospital."

remove_last_char_of_string(){
  # :: means from 0 to the -1'th index (-1 indicates the last index)
  echo "${1::-1}"
}

remove_last_char_of_string "${expensive_hospital}"


