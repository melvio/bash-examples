#!/usr/bin/env bash

my_array=("a" "b" "c")
echo "${my_array[@]}" # a b c
unset "my_array[1]"
echo "${my_array[@]}" # a c

my_array=(welcome my friend)
echo "${!my_array[@]}"

my_array=(0 1 2)

# access all the items and loop through the items
for value in "${my_array[@]}" ; do echo "$value" ; done
# 0
# 1
# 2

for value in "${my_array[*]}" ; do echo "$value" ; done
# 0 1 2

for value in ${my_array[*]} ; do echo "$value" ; done
# 0
# 1
# 2

my_array=(welcome my friend)
echo "${my_array[0]}"  # welcome
echo "${my_array}"  # welcome
echo "${my_array[1]}"  # my
echo "${my_array[2]}"  # friend
echo "${my_array[3]}"  #
echo "${my_array[@]}"  # welcome by friend
echo "${my_array[*]}"  # welcome by friend

my_array=(you are)
my_array+=(cooky)
echo "${my_array[@]}" # you are cooky


# watch out: appending to first element here
my_array2=(you are)
my_array2+=cooky
echo "${my_array2[@]}" # youcooky are

ma_array=(7 8 "hi")
echo "${ma_array[1]}"
echo "${ma_array[2]}"


ma_array=("${my_array[*]}" "hi" 10)
echo "${ma_array[*]}"



array_one=(0 1 2)
array_two=("a" "b" "c")

array_three=("${array_one[*]}" "${array_two[*]}")
echo "${array_three[1]}" # a b c

array_three=(${array_one[*]} ${array_two[*]})
echo "${array_three[1]}" # 1
