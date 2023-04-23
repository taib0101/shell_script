function fact
{
    if [ $1 -eq 1 ]
    then
        echo "$1"
    elif (( $1 > 1))
    then
        xx=$(($1*$(fact $(($1-1)))))
        echo "$xx"
    fi
}
echo "getting factorial using recursion"
read -p "Enter a numbe: " x

echo "factorial is : $(fact $x)"

function void()
{
    echo "hello world"
}

void