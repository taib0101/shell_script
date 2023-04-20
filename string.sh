string="hello world"
echo "string is $string"
length="${#string}"
echo "length of string is $length"
string2=""

for((i=0;"$i"<"$length";++i))
do
    char="${string:i:1}"
    echo "$char"
    string2+="$char"
done

echo "char to string is $string2"