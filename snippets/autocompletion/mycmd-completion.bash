#!/usr/bin/env bash


_autocomplete_mycmd() {
  local wordlist="now chaos todos weather"

  COMPREPLY=( $(compgen -W "${wordlist}") )
}


# This works as follows:
# 1. The -F option expects a function that implements the autocompletion
# 2. When 'mycmd' is typed into bash, and one presses <Tab>, the
#    function _autocomplete_mycmd is invoked
# 3. This function uses COMPREPLY to provide to provide suggestions
complete -F _autocomplete_mycmd mycmd

# For this to work you have to source the mycmd-completion.bash file
#
# $ source mycmd-completion.bash
#
# now you can type:
# $ mycmd <tab>
# chaos    now      todos    weather
#
# or, given that you are in the correct directory:
# $ ./mycmd <tab>
# chaos    now      todos    weather

# Note that this not yet implement proper substring searching:
#
# $ mycmd n<tab>
# chaos    now      todos    weather
# ^ even though we typed in 'n' we still see non-matching words



