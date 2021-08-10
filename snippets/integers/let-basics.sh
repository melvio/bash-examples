#!/usr/bin/env bash


# let evaluates the part on the right of the = as an expression
let i=1+1
echo "${i}"
# 2

# watch out: let does does not set the integer attribute on the variable
let j=1+1
declare -p j # declare -- j="2"

# j is evaluated as a string so "1" is appended
j+=1
echo ${j} # 21

set -o xtrace
b=2
c=4
# watch out: '*' is the globbing operator here
let a=b * c # This will evaluate to:  let a=b declaration.sh let-basics.sh {more files} c
echo "${a}" # 2     (since only a=b was evaluated before the syntax error occurred)

# this does work (now the * is not evaluated as a globbing operator)
let a=b*c
echo "${a}" # 8

