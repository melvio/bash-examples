#!/usr/bin/env bash



# continue if condition is met
specialisms=("neurology" "orthopedics" "cardiology" "internal medicine")
for speciality in "${specialisms[@]}"; do
  if [[ ${speciality} == "orthopedics" ]]; then
    continue  # `continue` is equivalent to `continue 1`
  fi
  echo "${speciality}"
done
# neurology
# cardiology
# internal medicine


# continue if condition is met
specialisms=("neurology" "orthopedics" "cardiology" "internal medicine")
for i in {0..3} ; do
  for speciality in "${specialisms[@]}"; do
    if [[ ${speciality} == "orthopedics" ]]; then
      continue 2 # continue with the 2nd outer loop (The {0..3} for loop in this case)
    fi
    echo "${speciality}"
  done
done
# neurology
# neurology
# neurology
# neurology



# watch out: continue n returns to the n-th outer loop, it does NOT skip n steps
for i in {0..7} ; do
  echo "i before: $i"
  continue 2 # this does probably does not do what you want because there is no 2nd outer loop
done
# i before: 0
# i before: 1
# i before: 2
# i before: 3
# i before: 4
# i before: 5
# i before: 6
# i before: 7
# i before: 0


