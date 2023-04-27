echo -n "read array : "
read -a array

length="${#array[@]}"

for((i=0;"$i"<"$length" && "$i"<"$length";++i))
do
    echo "array[$i] = ${array[$i]}"
done

echo "we print directly like ${array[@]}"

array=("taib" "boss")
for((i=1; $i <= 2; ++i))
do 
    read x;
    array+=("$x")
done
echo "we print directly like ${array[@]}"

for((i=0; $i < ${#array[@]}; ++i))
do 
    array[$i]="taib"
    array[$i]=10
    # array[$i]="10" same shitt man

done

echo "we print like ${array[@]}"

echo "declear a my_array with size"

my_array=($(seq 1 10))

echo "size of declearing my_array = ${#my_array[@]}"