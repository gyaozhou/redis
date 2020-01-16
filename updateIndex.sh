#!/bin/bash

date
find . -type f \( -name "*.[ch]" -o -name "*.cpp" \) -print > cscope.files
#find . -type f -name *.dpl >> cscope.files
find . -type f -name *.cc >> cscope.files
find . -type f -name *.hh >> cscope.files
cscope -b

find  . -name \*.py -print | xargs etags

date

