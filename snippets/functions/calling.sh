#!/usr/bin/env bash


granulocyte_printer (){
  echo "neutrophil"
  echo "eosinophil"
  echo "basophil"
}

result_granulocyte_printer=$(granulocyte_printer)
echo "${result_granulocyte_printer}"
# neutrophil
# eosinophil
# basophil


leukocyte_printer (){
  echo "granulocyte" &> 2
  echo "lymphocyte"
  echo "monocyte"
  return 3
}

# legacy syntax
result_leukocyte_printer=`leukocyte_printer`
echo "${result_leukocyte_printer}"
#granulocyte
#lymphocyte
#monocyte






