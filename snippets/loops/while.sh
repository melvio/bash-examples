#!/usr/bin/env bash

perform_treatment() {
  declare -ir start_gcs=9
  declare -i current_gcs="${start_gcs}"
  while (( current_gcs < 15 )) ; do
    current_gcs+=2
    declare -i improvement=$((current_gcs-start_gcs))  # cannot be -r because 'improvement' remains in scope
    echo "improvement=${improvement}"
  done
  echo "final improvement=${improvement}"
  echo "gsc=${current_gcs} BETTER =D"
}
perform_treatment
# improvement=2
# improvement=4
# improvement=6
# final improvement=6
# gsc=15 BETTER =D
