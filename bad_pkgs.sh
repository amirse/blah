#!/bin/bash

bad=/tmp/bad_packages.txt
rm -f "$bad"

ofInterest='^missing.+/usr/lib/python2.7.+'
# let's get the bad packages
for pkg in $(rpm -qa); do
  result=$(rpm -V $pkg); 
  if echo -e "$result" | egrep "$ofInterest"; then
    echo "$pkg" >> $bad
  fi

done


