#!/usr/bin/env bash

_complete_specialty () {
  local cur="${COMP_WORDS[COMP_CWORD]}"
#  echo ""
#  echo "current command line: ${COMP_WORDS[*]}"
#  echo "Index into COMP_WORDS containing the current cursor position: ${COMP_CWORD}"
#  echo "current word ${cur}"
#  echo ""

  # specialty<tab>
  if [[ ${COMP_CWORD} -eq 1 ]] ; then
    wordlist="neurology pathology"
    COMPREPLY=( $(compgen -W "${wordlist}" -- "${cur}" ) )
  elif [[ ${COMP_CWORD} -eq 2 ]] ; then
    # specialty neurology<tab>
    if [[ ${COMP_WORDS[1]} == "neurology" ]] ; then
      wordlist="neuromuscular_medicine vascular_neurology child_neurology"
      COMPREPLY=( $(compgen -W "${wordlist}" -- "${cur}" ))
    # specialty pathology<tab>
    elif [[ ${COMP_WORDS[1]} == "pathology" ]] ; then
      wordlist="clinical_pathology cytopathology immunopathology"
      COMPREPLY=( $(compgen -W "${wordlist}" -- "${cur}" ))
    fi
  else
    COMPREPLY=()
  fi
}
complete -F _complete_specialty specialty