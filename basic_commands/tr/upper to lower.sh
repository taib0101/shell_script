read input
#upper to lower for a single word 
input=$(echo "#define $input" | tr '[:upper:]' '[:lower:]')
echo "$input"
