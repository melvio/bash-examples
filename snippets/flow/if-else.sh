#!/usr/bin/env bash


# <https://www.dna-worldwide.com/resource/160/history-dna-timeline>
human_genome_project_start=1990
human_genome_project_finish=2003

if (( human_genome_project_start )) ; then echo "True" ; fi
# True (because the variable is not 0)

if (( human_genome_project_start < human_genome_project_finish )) ; then echo "True" ; fi
# True

# This works,but using $var is unnecessary inside (( .. )), var is enough
if (( $human_genome_project_start < $human_genome_project_finish )) ; then echo "True" ; fi
# True


# Watch out:
#   True because lexicographical ordering "1990 < 2003"
if [[ $human_genome_project_start < $human_genome_project_finish ]] ; then echo "True" ; fi
# True

if [ $human_genome_project_start -lt $human_genome_project_finish ] ; then echo "True" ; fi
# True










