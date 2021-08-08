#!/usr/bin/env bash


echo "${BASHOPTS}"  # checkwinsize:cmdhist:complete_fullquote:extquote:force_fignore:globasciiranges:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath
./set-inheritance-child  # checkwinsize    on
shopt -u checkwinsize
shopt -u cmdhist force_fignore
echo "${BASHOPTS}"  # complete_fullquote:extquote:globasciiranges:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath


# called child does NOT inherit shell options set by parent
./set-inheritance-child # checkwinsize    on
echo "${BASHOPTS}"  # complete_fullquote:extquote:globasciiranges:hostcomplete:interactive_comments:progcomp:promptvars:sourcepath

# sourced file does have the same shell options set by parent
source ./set-inheritance-child  # checkwinsize    off




