#!/usr/bin/env bash

# <https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4379645/>
grandfathers=("Imhotep" "Croton" "Hippocrates")

# ${!grandfathers[@]} returns the indices of an array
for index in "${!grandfathers[@]}" ; do
  index+=1
  echo "${index}"
done
# 01
# 11
# 21
# ^ indices are interpreted as strings by default

# ${!grandfathers[@]} returns the indices of an array
for index in "${!grandfathers[@]}" ; do
  declare -i index
  index+=1
  echo ${index}
done
# 1
# 2
# 3


