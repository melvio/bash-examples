#!/usr/bin/env bash

unset varx
echo '(( varx && 1 ))'
(( varx && 1 ))  ; echo $?  # variable doesn't exist -> considered 0
# 1

varx=0
(( varx && 1 ))  ; echo $?
# 1

varx=1
(( varx && 1 ))  ; echo $?
# 0



