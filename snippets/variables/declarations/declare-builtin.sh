#!/usr/bin/env bash

# [more info under 'declare'](https://www.gnu.org/software/bash/manual/bash.html#Bash-Builtins)

# usage (printing-only):
#   declare [-p|-f|-F]                 -- for printing all declared variables and/or functions
#   declare [-p|-f|-F] {name}...       -- for printing the specified declared variables and/or functions

# usage (for declaring and optionally setting vars):
#   declare -a|-A   {name[=value]}...  -- for arrays
#   declare -i      {name[=value]}...  -- for integers
#                                         Variables with the integer attribute have arithmetic evaluation (see
#                                         the `let` command) performed when the variable is assigned a value.
#   declare -l|-u   {name[=value]}...  -- for variables that will get lower/upper case values automatically
#   declare -n      {name=var_name}... -- to make 'name' a reference to another variable
#   declare -r      {name[=value]}...  -- to make 'name' readonly
#   declare -x      {name[=value]}...  -- to make 'name' export
#   declare -t      {name[=value]}...  -- to make a function traceable (has no usage for vars)

# usage (for declaring and optionaly setting variables within a function body):
#   declare [opt]...{name[=value]}...  -- works as usual, but keeps the variable local automatically
#   declare [-g]    {name[=value]}...  -- works as usual, but makes the variable global

# Tip:
# 1. Generally, you can use the +[option] to remove an attribute.
#    + e.g. `declare +i myvar` removes the 'integer' attribute from `myvar`
#    + caveats: this does not work for +r, +a, and +A.



# print all declared variables and functions (essentially a `declare -f` and `declare -p` in one)
declare
# huge output...


# print all variables together with both their:
# 1. attributes e.g.:
#    * -x for exported
#    * -a for array
#    * -ir for integer and readonly
#    * -- for no explicit attributes
# 2. values
declare -p
# declare -x ANDROID_EMULATOR_HOME="/home/m/.config/android"
# declare -x AWS_CONFIG_FILE="/home/m/.config/aws/config"
# declare -- BASH="/bin/bash"
# declare -r BASHOPTS="autocd:cdspell:checkwinsize:cmdhist:complete_fullquote:dirspell:expand_aliases:extglob:extquote:force_fignore:globasciiranges:globstar:histappend:interactive_comments:progcomp:promptvars:sourcepath"
# declare -i BASHPID
# declare -A BASH_ALIASES=()
# declare -a BASH_ARGC=([0]="0")
# declare -A BASH_CMDS=()
# ...
# declare -ar BASH_VERSINFO=([0]="5" [1]="0" [2]="17" [3]="1" [4]="release" [5]="x86_64-pc-linux-gnu")
# ...
# declare -ir EUID="2000"
# ...


# print declared and available functions (including impl)
declare -f

# print declared and available functions (function signature only)
declare -F



