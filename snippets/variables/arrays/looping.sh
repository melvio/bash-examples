#!/usr/bin/env bash

my_array=(0 1 2)
# access all the items and loop through the items
for value in "${my_array[@]}" ; do echo "$value" ; done
# 0
# 1
# 2

example_separator() {
  echo "--"
}
example_separator

my_array=(0 1 2)
for value in "${my_array[*]}" ; do echo "$value" ; done
# 0 1 2


example_separator


my_array=(0 1 2)
for value in ${my_array[*]} ; do echo "$value" ; done
# 0
# 1
# 2

example_separator


example_separator
declare -a doctors=("hippocrates" "pergamon galen")
for doctor in "${doctors[@]}" ; do  echo "${doctor}" ; done

# hippocrates
# pergamon galen

example_separator

declare -a doctors=("hippocrates" "pergamon galen")
# probably some unwanted splitting:
for doctor in ${doctors[*]} ; do  echo "${doctor}" ; done
# hippocrates
# pergamon
# galen

