#!/usr/bin/env bash


declare -i eyes_in_human_body

# automatically evaluated to 2 because of the declare -i
eyes_in_human_body=1+1
echo "${eyes_in_human_body}" # 2



# declare integer to be an i
declare -i cells_in_human_body_trillion=30000000000000

# cell division
cells_in_human_body_trillion+=1
echo "${cells_in_human_body_trillion}" # 30000000000001



declare -i avg_bmi

avg_bmi=22.5 # ./declaration.sh: line 23: 22.5: syntax error: invalid arithmetic operator (error token is ".5")
echo "${avg_bmi}"