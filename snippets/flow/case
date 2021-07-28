#!/usr/bin/env bash







# Note: on a match, the other patterns are not checked!
var="Fleming"
case $var in
  *emi*)  echo "*emi* match" ;;
  Fl*)    echo "FL* match" ;;
esac
# *emi* match


sentence="Those who can imagine anything, can create the impossible - Turing"
for word in $sentence ; do
  case "$word" in
    Those|the) echo "saw: Those or the" ;;
    who) echo "saw: who"
  esac
done
# saw: Those or the
# saw: who
# saw: Those or the


sentence="Those who can imagine anything, can create the impossible - Turing"
for word in $sentence ; do
  case "$word" in
    c*) echo "word started with c"
  esac
done
# word started with c
# word started with c
# word started with c


sentence="Those who can imagine anything, can create the impossible - Turing"
for word in $sentence ; do
  case "$word" in
    cr*)    echo "word started with cr" ;;
    Turing) echo "found Turing" ;;
    *g)     echo "word ended with g"
  esac
done
# word started with cr
# word ended with g
# found Turing


