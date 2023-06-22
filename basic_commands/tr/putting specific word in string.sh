read input
# remove for specific word from a string
# 
output=$(echo "$input" | tr -d ":")
echo "$output"
