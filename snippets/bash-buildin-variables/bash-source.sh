#!/usr/bin/env bash

# [docs](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#index-BASH_005fSOURCE)


# BASH_SOURCE returns the relative path to which it was executed
echo "${BASH_SOURCE[*]}"


# $ ./bash-source.sh
# ./bash-source.sh
# $ cd ..
# $ ./bashvariables/bash-source.sh
# ./bashvariables/bash-source.sh
# $ source ./bashvariables/bash-source.sh
# ./bashvariables/bash-source.sh
# $ source bashvariables/bash-source.sh
# bashvariables/bash-source.sh

# now let's call it indirectly:
# ./bash-buildin-variables/direction-bash-source.sh
# /home/m/Documents/lcl/melvio/bash-examples/snippets/bash-buildin-variables/bash-source.sh ./bash-buildin-variables/direction-bash-source.sh

# source ./bash-buildin-variables/direction-bash-source.sh
# /home/m/Documents/lcl/melvio/bash-examples/snippets/bash-buildin-variables/bash-source.sh ./bash-buildin-variables/direction-bash-source.sh


