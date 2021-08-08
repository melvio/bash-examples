#!/usr/bin/env bash

#
declare -a liver_surgeries=('transplant' 'lobectomy')

# number of items:
echo "${#liver_surgeries[@]}"   #2

# watch out: this gives the length of the first element
echo "${#liver_surgeries}"      #10
