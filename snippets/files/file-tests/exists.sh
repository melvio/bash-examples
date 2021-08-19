#!/usr/bin/env bash


file_exists="./test-files/regular_file_empty.txt"
[[ -e "${file_exists}" ]] && echo "${file_exists} exists!"
# ./test-files/regular_file_empty.txt exists!

[[ -f "${file_exists}" ]] && echo "${file_exists} is a file !" || echo "not a file"
# ./test-files/regular_file_empty.txt is a file !

[[ -d "${file_exists}" ]] && echo "${file_exists} is a dir !" || echo "not a dir"
# not a dir



# --- #



dir_exists="./test-files/"
[[ -e "${dir_exists}" ]] && echo "${dir_exists} exists!"
# ./test-files/ exists!

[[ -f "${dir_exists}" ]] && echo "${dir_exists} is a file !" || echo "not a file"
# not a file

[[ -d "${dir_exists}" ]] && echo "${dir_exists} is a dir !" || echo "not a dir"
# ./test-files/ is a dir !
