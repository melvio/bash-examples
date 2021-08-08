#!/usr/bin/env bash

_autocomplete_greet() {
  # register these 4 words for autocompletion after 'greet'
  COMPREPLY=("hi" "hoi" "hiyaa" "aloha")
}
complete -F _autocomplete_greet greet


_autocomplete_greet2() {
  # probably not want you want because this will append
  # "hi hoi hiyaa aloha"
  COMPREPLY=("hi hoi hiyaa aloha")
}
complete -F _autocomplete_greet2 greet2
