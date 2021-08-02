#!/usr/bin/env bash

inventor=
echo "${inventor}"                     # "" (empty string)

# := set the inventor variable if it is either empty or unset
echo "${inventor:="Peter Mansfield"}"  # Peter Mansfield
echo "${inventor}"                     # Peter Mansfield
# once a variable is set, it is not set again
echo "${inventor:="Wilhelm Rontgen"}"  # Peter Mansfield

guy=
# : set the 'guy' variable if is unset
echo "${guy="Elon Musk"}"   # "" (empty string because 'guy' is set to the empty string)
unset guy
echo "${guy="Elon Musk"}"   # Elon Musk
# once a variable is set, it is not set again
echo "${guy="Jeff Bezos"}"  # Elon Musk


unset surgeon
echo "${surgeon}"                      # ""
echo "${surgeon="Christiaan Barnard"}" # Christiaan Barnard









