#!/bin/s
####################################
#
# Displays # of occurrences and duplicate 
# values found in the first row of a CSV file.
#
# Usage: sh FindUniqueAndDuplicatesInCSV.sh numbers.sh
#
####################################
echo "Occurrences:"

# count number of occurances (-c)
cat $1 | awk -F "," '{ printf "%.2f\n", $1}' | uniq -c | sort -nr

# only duplicated lines (-d)
echo "Duplicate values:"
cat $1 | awk -F "," '{ printf "%.2f\n", $1}' | uniq -d

# unique values (-u)
# output # of lines (wc -l)
echo "# of unique values:"
cat $1 | awk -F "," '{ printf "%.2f\n", $1}' | uniq -u | wc -l
