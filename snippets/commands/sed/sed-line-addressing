#!/usr/bin/env bash


some_file="./example_file.md"

# print line 1,2,3,4, and 5 (lines in files are 1-indexed according to `sed`)
sed -n '1,5p' "${some_file}"

echo "---"

# print line 1 and 3
sed -n -e '1p' -e '3p' "${some_file}"

echo "---"

# print line 1, skip 2,3,4 and 5, continue from 6
sed '2,5d' "${some_file}"

