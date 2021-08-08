#!/usr/bin/env bash

_help() {
  echo "usage:"
  echo "    ./$(basename "$0") -h       -- show help"
  echo "    ./$(basename "$0") -v       -- show version"
}

_version(){
  echo "v0.0.1-alpha"
}

parse_options () {
  # this getopts has support for:
  # * the -h option, without arguments to this option
  # * the -v option, without arguments to this option
  # the colon (:) prefix suppresses errors (still prints them though)

  getoptstring=":hv"
  while getopts ${getoptstring} captured_argument_name ; do
    case ${captured_argument_name} in # captured_argument_name will contain:
                                      # * the letter 'v' in case of passing -v
                                      # * the letter 'h' in case of passing -h

    # getopts will remove the leading dash for us -
    h) _help ;;
    v) _version ;;
    ?)
      echo "Invalid option: -${OPTARG}"
      exit 2
      ;;
    esac
  done
}
parse_options "$@"

# $ ./parsing-cmd-line-options -v
# v0.0.1-alpha

# $ ./parsing-cmd-line-options -v
# v0.0.1-alpha

# $ ./parsing-cmd-line-options -m
# Invalid option: -m



