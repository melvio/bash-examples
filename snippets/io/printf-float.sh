#!/usr/bin/env bash




printf '%f\n' 1.1 # 1.100000

 # precision is 0
printf '%.0f\n' 1.1 # 1


 # precision is 0
printf '%.0f\n' 1.9 # 2


 # width is 2, precision is 4
printf '%2.4f\n' 1.1 # 1.1000


 # width is 4, precision is 2
printf '%4.2f\n' 1.1 # 1.10

