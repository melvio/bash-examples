#!/usr/bin/env bash


doctors=("hippocrates" "pergamon galen")
echo "${doctors[@]}"
echo "length: ${#doctors[@]}"     # length: 2

# probably not how you want to assign because
# splitting will happen here:
reassign=(${doctors[@]})
echo "${reassign[@]}"
echo "length: ${#reassign[@]}"    # length: 3
echo "${reassign[1]}" # pergamon
echo "${reassign[2]}" # galen


# probably how you want to reassign
reassign2=("${doctors[@]}")
echo "length: ${#reassign2[@]}"    # length: 2
echo "${reassign2[1]}" # pergamon galen


# using declare -a syntax
declare -a astronauts=("Ellen Baker" "Boris Yegorov")
echo "${astronauts[@]}" # Ellen Baker Boris Yegorov



