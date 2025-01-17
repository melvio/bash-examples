#!/usr/bin/env bash


#### [[ -z and [[ -n ####

echo "${common_intestinal_disease}" # (empty echo)
if [[ -z ${common_intestinal_disease} ]]  ; then   echo '-z ${common_intestinal_disease} is True' ; fi
if [[ ! -n ${common_intestinal_disease} ]]  ; then echo '-n ${common_intestinal_disease} is False' ; fi
#-z ${common_intestinal_disease} is True
#-n ${common_intestinal_disease} is False

common_intestinal_disease=
if [[ -z ${common_intestinal_disease} ]]  ; then   echo '-z ${common_intestinal_disease} is still True' ; fi
if [[ ! -n ${common_intestinal_disease} ]]  ; then echo '-n ${common_intestinal_disease} is still False' ; fi
#-z ${common_intestinal_disease} is still True
#-n ${common_intestinal_disease} is still False

common_intestinal_disease="diverticulitis"
if [[ ! -z ${common_intestinal_disease} ]]  ; then   echo '-z ${common_intestinal_disease} is now False' ; fi
if [[ -n ${common_intestinal_disease} ]]  ; then     echo '-n ${common_intestinal_disease} is now True' ; fi
# -z ${common_intestinal_disease} is now False
# -n ${common_intestinal_disease} is now True

unset common_intestinal_disease # now 'common_intestinal_disease' is not defined anymore
if [[ -z ${common_intestinal_disease} ]]  ; then   echo '-z ${common_intestinal_disease} is True' ; fi
if [[ ! -n ${common_intestinal_disease} ]]  ; then echo '-n ${common_intestinal_disease} is False' ; fi
#-z ${common_intestinal_disease} is True
#-n ${common_intestinal_disease} is False



