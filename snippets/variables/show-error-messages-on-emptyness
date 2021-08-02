#!/usr/bin/env bash


# ${var?..} only fails if the var is unset
#  this will not fail because 'doctor' has been set to the empty variable
doctor=
echo "my doctor: ${doctor?"You dont have a doctor" }" # my doctor:


# ${var?..} fails if the var is unset or if var is set to the empty string
#   so this will fail
doctor=
echo "my doctor: ${doctor:?"You dont have a doctor" }" # doctor: You dont have a doctor
# ^ bash terminates here

# this would fail too, if bash didn't quit before
unset doctor
echo "my doctor: ${doctor:?"You dont have a doctor" }" # doctor: You dont have a doctor



