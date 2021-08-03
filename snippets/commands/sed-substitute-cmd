#!/usr/bin/env bash

some_file=./surgery_file.md

# fixes a typo
sed 's/Circumcisionn/Circumcision/' "${some_file}"

sed 's/circumcisionn/circumcision/' "${some_file}"

# have to escape the &
sed 's/and/\&/' "${some_file}"

# g option (global) can matche repeatedly on 1 line
sed 's/and/\&/g' "${some_file}"

