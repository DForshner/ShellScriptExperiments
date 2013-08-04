#!/bin/sh
####################################
#
# Gets the top and bottom 3  rows from a file.
#
# Usage: sh GetTopAndBottomRows.sh numbers.sh
#
####################################

head -n 3 $1

echo 
echo "Word Count: (lines / words / bytes)"
wc $1
echo

tail -n 3 $1
