#!/usr/bin/env bash


x=3
echo $((x++)) # 3
echo "$x" #4

# $x is now evaluated as a string and ++ is appended
echo $x++     # 4++
echo "${x}++" # 4++
# now $ is interpreted as a literal string because variable names
# may no start with ++
echo $++x     # $++x

((x++))
echo "$x"     # 5

y=3
# evaluate ++ first
echo $((++y))  # 4


### arithmetic operators ###
echo  $((7 + 3)) # 10

# quotes is not needed for $((..))
echo "$((7 + 3))" # 10


### comparison operators ###
echo $(( 7 >= 9 )) # 0
echo $(( 9 >= 9 )) # 1
echo $(( 3 <= 7 )) # 1
echo $(( 3 < 17 )) # 1





