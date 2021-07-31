#!/usr/bin/env bash


a_function() {
  export local_var="hi"
}
a_function
./exporting_child  # local_var is available inside the ./exporting_child file


# aliases are not exported to children
# to import an alias from an other file use `source`
alias hello_there="echo 'hello_there'"
export hello_there

