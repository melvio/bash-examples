#!/usr/bin/env bash

# ./parsing-positionals 'lung (including bronchus)' breast 'colon and rectal'
echo "$0"
echo "$1"
echo "$2"
echo "$3"
# ./parsing-positionals
# lung (including bronchus)
# breast
# colon and rectal

echo $# # 3 positional arguments

# The correct way to echo $0, $1,... in line with the indexes
# of "$@" (i.e. in line with the positional parameters) is
# by using "$@"
for positional_arg in "$@" ; do echo "${positional_arg}" ; done
# lung (including bronchus)
# breast
# colon and rectal

# No "" with $@, thus additional splitting is performed:
for positional_arg in $@ ; do echo "${positional_arg}" ; done
# lung
# (including
# bronchus)
# breast
# colon
# and
# rectal

# With $* and the expansion is not within double quotes, each positional parameter expands to a separate word.
for positional_arg in $* ; do echo "${positional_arg}" ; done
# lung
# (including
# bronchus)
# breast
# colon
# and
# rectal

# When using "$*" the words in the array will be appended
for positional_arg in "$*" ; do echo "${positional_arg}" ; done
# lung (including bronchus) breast colon and rectal

# the first character in IFS determines how to concat the members of $*
IFS="wx" ; for positional_arg in "$*" ; do echo "${positional_arg}" ; done
#lung (including bronchus)wbreastwcolon and rectal
