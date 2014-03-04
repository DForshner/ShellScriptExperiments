#!/bin/sh
#########################################################################
#
# Counts the number of lines of code in any javascript (.js) found in the
# current or sub-directories.
#
# Usage: sh CountJavaScriptLOC.sh
#
#########################################################################

echo 
find . -name '*.js' | xargs wc -l
echo
