#!/usr/bin/env bash

printf '%0.0e \n' 1.1
# 1e+00

printf '%3.1e \n' 1000.1000
# 1.0e+03

printf '%3.2e \n' 1000.1000
# 1.00e+03
