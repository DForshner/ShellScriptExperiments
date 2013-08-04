#!/bin/sh
####################################
#
# Sums the columns in a CSV file.
#
# Usage: sh SumColumnsFromCSV.sh numbers.sh
#
####################################

echo "Getting totals for:" $1

# cat - command to stream file to stdout
# Pipe the streaming contents from cat to awk
# Set the field separator to ","
# Sum each number streamed from the pipe
# Print out the sum
cat $1 | awk -F "," '{ sum1 += $1; sum2 += $2; sum3 += $3; sum4 += $4 } END { printf "Column1: %.2f Column2: %.2f Column3: %.2f Column4: %.2f\n", sum1, sum2, sum3, sum4; }'
