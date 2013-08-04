#!/bin/sh
####################################
#
# Displays CSV sorted by second column.
#
# Usage: sh SortCSVBySecondColumn.sh numbers.sh
#
####################################

# Numeric (-n)
# Sort on second column (-k2)
sort -n -k2 $1 | more
