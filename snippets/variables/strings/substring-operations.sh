#!/usr/bin/env bash

### deleting substrings (i.e. filtering string)

delete_string="Edsger Wybe Dijkstra"

# remove all 'e' (note that this does not change the underlying string)
echo "${delete_string/e}" # Edsgr Wybe Dijkstra


# remove 'Wybe '
echo "${delete_string/Wybe }" # Edsger Dijkstra


### replacing substrings

replace_string="Her lumbago has been cured"

echo "${replace_string/lumbago/aspecific lower back pain}" # Her aspecific lower back pain has been cured


# removing the extension from a file
some_file="dna_data.csv"
echo "${some_file/.*}"             # dna_data
some_file_no_ext="dna_data"
echo "${some_file_no_ext/.*}"      # dna_data
some_file_double_dot="dna.data.csv"
echo "${some_file_double_dot/.*}"  # dna
some_dot_file=".vimrc"
echo "${some_dot_file/.*}"         # ""

# best approach:
echo "${some_file_double_dot}" | cut -f 1 -d '.'  # dna
echo "${some_dot_file}" | cut -f 1 -d '.'  # dna

