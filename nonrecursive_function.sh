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
    echo "$sub" #we return as like echo
}
# $(sub 5 6) -> this is also valid
# subb=$(sub 5 6) -> this is also valid
echo "returned sub = $(sub 5 6)" #this is also valid