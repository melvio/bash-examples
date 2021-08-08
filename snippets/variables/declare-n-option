#!/usr/bin/env bash


# usage without -n usage:
declare physician=cosmonaut
echo "physician=${physician}"

# `declare -n innovation=penicillin makes
# the variable 'innovation' point to a variable called 'penicillin'
# and vice versa
declare -n invention=penicillin
echo "invention=${invention}"
echo "${invention}"      # "" (empty string)
echo "${penicillin}"     # "" (empty string)

penicillin="A. Flemmings"
echo "${penicillin}"     # A. Flemmings
echo "${invention}"      # A. Flemmings

invention="F. Pantridge"
echo "${penicillin}"     # F. Pantridge
echo "${invention}"      # F. Pantridge





# watch out:
#  var_a now points to var and b is now a variable pointing to nothing
declare -n var_a=var b
var="example"
echo "${var_a}" # example
b="hi"          # b is assigned to
echo "$b"       # "" (empty string)


# This does work because "var_b" is interpreted as a variable called var_b
declare -n var_c="var_d"
var_c="something"
echo "${var_c}" # something
echo "${var_d}" # something


# assign a value to a variable (without -n option)
declare cosmonaut=physician
echo "${cosmonaut}"   # physician     --> because we assigned a value

# make the cosmonaut variable reference the physician variable (with -n option)
declare -n cosmonaut=physician
echo "${cosmonaut}"   # "" (empty string)
                      # It is empty because cosmonaut point to the non-existing physician variable


physician="B. Yegorov"
echo "${physician}"   # B. Yegorov
echo "${cosmonaut}"   # B. Yegorov



# Watch out: you cannot have spaces in variable names
#declare -n var_a="var b" # `var b': invalid variable name for name reference


