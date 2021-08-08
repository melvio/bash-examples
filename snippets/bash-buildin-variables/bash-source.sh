#!/usr/bin/env bash

# [docs](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fSOURCE)


# BASH_SOURCE returns the relative path to which it was executed
echo "${BASH_SOURCE[*]}"
# e.g.
# $ ./bash-source
# ./bash-source
# cd ..
# $ .bashvariables/bash-source
# ./bashvariables/bash-source


