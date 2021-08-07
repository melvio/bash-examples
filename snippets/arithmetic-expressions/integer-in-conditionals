#!/usr/bin/env bash





if (( 1000 < 200 )) ; then echo "True" ; else echo "False" ; fi
# False
if (( 1000 <= 200 )) ; then echo "True" ; else echo "False" ; fi
# False


if [[ 1000 -lt 200 ]] ; then echo "True" ; else echo "False" ; fi
# False

if [[ 1000 -le 200 ]] ; then echo "True" ; else echo "False" ; fi
# False


# Probably not what was intended
# Watch out: inside [[ ]] the 1000 and 200 are interpreted as strings
# 1 comes before 2 so this results in True
if [[ 1000 < 200 ]] ; then echo "True" ; else echo "False" ; fi
# True

if [[ 1000 <= 200 ]] ; then echo "True" ; else echo "False" ; fi
# Syntax error



