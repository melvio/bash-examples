#!/usr/bin/env bash

# -l: automatically make assigned values lowercase
declare -l waist_hip_ratio="WHR"

# automatically will be lowercase
echo "${waist_hip_ratio}" # whr

waist_hip_ratio="Waist Hip Ratio"
# even on re-assignment; this 'lower' propery remains
echo "${waist_hip_ratio}" # waist hip ratio



# automatically make assigned values uppercase
declare -u waist_shoulder_ratio="whr"
echo "${waist_shoulder_ratio}" # WHR




