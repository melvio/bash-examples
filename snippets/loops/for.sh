#!/usr/bin/env bash

# c/java style loop
for ((i = 0; i < 5; i++)); do echo "$i"; done
# 0
# 1
# 2
# 3
# 4

# for-each loop
for x in "ICD-9" "ICD-10" "ICD-11" "ICD-12"; do echo "$x"; done
# ICD-9
# ICD-10
# ICD-11
# ICD-12

for c in {a..e}; do echo "$c"; done
# a
# b
# c
# d
# e

for i in {2..5}; do echo "$i"; done
# 2
# 3
# 4
# 5


# watch out for:
for i in {0..7} ; do  # i get reset after each loop
  echo "i before: $i"
  i=$((i+2))   # this probably does not do what you want it to do because i is reset every loop
  echo "i after:  $i"
done
#i before: 0
#i after:  2
#i before: 1
#i after:  3
#i before: 2
#i after:  4
#i before: 3
#i after:  5
#i before: 4
#i after:  6
#i before: 5
#i after:  7
#i before: 6
#i after:  8
#i before: 7
#i after:  9






