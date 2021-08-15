#!/usr/bin/env bash


inside_function_scoping_is_human() {
  # <https://en.wikipedia.org/wiki/List_of_organisms_by_chromosome_count>
  declare -i chromosomes="$1"
  if (( chromosomes < 0 )) ; then
    echo "fewer than 0 chromosomes not supported"
  elif (( chromosomes == 46 )) ; then
    # e.g. exceptions: guppy, nilgai
    is_human="maybe human"
  else
    # e.g. exceptions: trisomies, monosomies
    is_human="probably not human"
  fi

  echo "number of chromosomes ${chromosomes}"
  echo "is human: ${is_human}"
}
echo "--- calling inside_function_scoping_is_human ---"

inside_function_scoping_is_human 46
# number of chromosomes 46
# is human: maybe human
inside_function_scoping_is_human "-1"
# fewer than 0 chromosomes not supported
# number of chromosomes -1
# is human: maybe human      # <- globally available, so remembered





inside_function_scoping_is_human2() {
  # <https://en.wikipedia.org/wiki/List_of_organisms_by_chromosome_count>
  declare -i chromosomes2="$1"
  if (( chromosomes2 < 0 )) ; then
    echo "fewer than 0 chromosomes not supported"
  elif (( chromosomes2 == 46 )) ; then
    declare is_human2="maybe human"     # `declare` makes the is_human2 variable local
  else
    declare is_human2="probably not human"
  fi

  echo "number of chromosomes ${chromosomes2}"
  echo "is human: ${is_human2}"    # even though declared in the deeper nested scope if-else it is available
}

echo "--- calling inside_function_scoping_is_human2 ---"
inside_function_scoping_is_human2 46
# number of chromosomes 46
# is human: maybe human
inside_function_scoping_is_human2 "-1"
# fewer than 0 chromosomes not supported
# number of chromosomes -1
# is human:                     # <- locally available bc of 'declare' call





