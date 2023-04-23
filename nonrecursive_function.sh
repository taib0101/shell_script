function add
{
    local sum=$(( $1 + $2 ))
    echo "sum = $sum"
}

x=$(add 5 6)
echo "sum = $x"

function sub
{
    local sub=$(($1-$2))
    echo "$sub"
}

subb=$(sub 5 6)
echo "returned sub = $subb"