#!/usr/bin/env bash

some_function() {
  local local_var="Krebs Cycle"
}
some_function
echo "local_var: ${local_var}" # local_var:


# locally declared variables without `local` are available globally
another_function() {
  locally_declared_var="Citric Acid Cycle"
}
another_function
echo "non_local_var: ${locally_declared_var}" # non_local_var: Citric Acid Cycle

# global vars can be modified inside functions
global_var="tricarboxylic acid cycle"
a_function() {
  echo "global_var: ${global_var}"  # global_var: tricarboxylic acid cycle
  global_var="Wolff's Law"
  echo "global_var: ${global_var}"  # global_var: Wolff's Law
}
a_function
echo "global_var: ${global_var}"    # global_var: Wolff's Law

# Using `local` 'protects' modifying global vars with the same name
scan_var="CT"
next_function() {
  echo "scan_var: ${scan_var}" # scan_var: CT
  local scan_var="MRI"
  echo "scan_var: ${scan_var}" # scan_var: MRI
}
next_function
echo "scan_var: ${scan_var}"   # scan_var: CT


