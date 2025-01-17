#!/usr/bin/env bash


# ordinary string (no newline appended)
printf "telemedicine"

# newline character
printf '\n'

# literally 2 chars: '\' followed by 'n'
echo '\n'


# ordinary string with newline appended
printf "telemedicine\n"



# 1 double quote
printf "\" \n"

# 1 backslash
printf "\\ \n"

# tab
printf "\t \n"

# single '%'
printf '%% \n'



echo "-- errors -- "

# invalid '%' is missing a subsequent format character
printf '% \n' ; echo $?  # 1

# invalid, printf needs at least an empty string
printf ; echo $?        # 2





