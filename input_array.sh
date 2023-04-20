# Now i am going to print array
# ellement as I gave it while giving command
# taib@taib-stoner:~/Documents/shell_script$ ./input_array.sh taib boss

echo "Printing it manually : $1 $2 $3"
array=("$@")
echo "printing it automatically : ${array[0]} ,${array[1]}, ${array[2]}"
# length of it
length=("$#")

echo "Length using (dollar, hash) : $length"
echo "Length using {#array[@]} : ${#array[@]}"

# "$#" is for length
# "$@" is for whole array