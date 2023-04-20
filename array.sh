echo -n "read array : "
read -a array

length="${#array[@]}"

for((i=0;"$i"<"$length" && "$i"<"$length";++i))
do
    echo "array[$i] = ${array[$i]}"
done

echo "we print directly like ${array[@]}"

array=("taib","boss")
echo "we print directly like ${array[@]}"