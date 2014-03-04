#!/bin/sh
#########################################################################
#
# Counts the number of lines of code in any javascript (.js) found in the
# sub-directories only
#
# Usage: sh CountJavaScriptLOCInSubDir.sh
#
#########################################################################

echo 
find . -path './*/*' -name '*.js' | xargs wc -l
echo
