#!/bin/bash
#FILE= $(<$1)
#echo "$FILE"

# count number of lines
printf "Number of lines in the file is "
wc -l $1

# count number of words
printf "\nNumber of words in the file is "
wc -w $1

# find most repetitive word
printf "\nmost repetitive word"
tr -c '[:alnum:]' '[\n*]' < $1 | sort | uniq -c | sort -nr | head  -1

# find least repetitive word
printf "\nleast repetitive word"
tr -c '[:alnum:]' '[\n*]' < $1 | sort | uniq -c | sort | head  -1

# find words based on regex patterns
# starts with "d" and ends with "d" can be upper or lower
#sed '/d.*d//Ig'
printf "number of words that start and end with d or D\n"
grep  [dD].*[dD] $1 #| wc 

# starts with "A" or "a" and ends with anything
printf "\nnumber of words that start with A or a\n"
grep  [aA].* $1 #| wc

# count numeric words


# count alphanumeric words
printf "\nnumber of alphanumeric words\n"
grep "^[a-zA-Z0-9_]*$" $1  
# automated committing to git repository
echo ""
echo ""
git add -A .
git commit -m "automated commit from script"
git push -u origin master
