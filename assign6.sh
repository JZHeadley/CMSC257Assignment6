#!/bin/bash
#FILE= $(<$1)
#echo "$FILE"

# count number of lines
echo "Number of lines in the file is "
wc -l $1

# count number of words
echo "Number of words in the file is "
wc -w $1

# find most repetitive word
echo "most repetitive word"
tr -c '[:alnum:]' '[\n*]' < $1 | sort | uniq -c | sort -nr | head  -10

# find least repetitive word
echo "least repetitive word"
tr -c '[:alnum:]' '[\n*]' < $1 | sort | uniq -c | sort | head  -10

# find words based on regex patterns
# starts with "d" and ends with "d" can be upper or lower
#sed '/d.*d//Ig'
echo "number of words that start and end with d or D"
grep [dD].*[dD] $1 | wc 
# starts with "A" or "a" and ends with anything

# count numeric words

# count alphanumeric words

# automated committing to git repository
git add -A .
git commit -m "automated commit from script"
git push -u origin master
