read -p "Enter a ineter : " x
echo -n "Enter another integer : "
read y

val=$(($x + $y))
val=`expr $x + $y`
val=$((x+y))
echo "sum of val :  $val"

val=$((x-y))
val=`expr $x - $y`
val=$(($x - $y))
echo "sub of val : $val"

val=$(($x * $y))
val=`expr $x \* $y`
val=$((x*y))
echo "multiple of val = $val"

val=$(($x / $y))
val=`expr $x / $y`
val=$((x/y))
echo "div of val = $val"

val=$(($x % $y))
val=`expr $x % $y`
val=$((x%y))
echo "mod of val = $val"

val=$(($x ** $y))
val=$((x**y))
echo "exponent of val : $val"

# echo "sum = $(($x + $y))"
# echo "sum = $((x+y))"

echo "Enter two float value : "
read a
read b

total=`echo $a + $b | bc`
echo "sum of float = $total"

total=`echo $a - $b | bc`
echo "sub of float = $total"

total=`echo $a \* $b | bc`
echo "multiple of float = $total"

total=`echo $a / $b | bc`
echo "div of float = $total"
