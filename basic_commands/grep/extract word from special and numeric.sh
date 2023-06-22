read input
# options: -o , --only-matching
# Print only the matched (non-empty) parts  of  a  matching  line,
# with each such part on a separate output line.
output=$(echo "$input" | grep -o '[a-z]*') #same
# output=$(echo "$input" | grep -o "[[:alpha:]]") #same
echo "$output"
