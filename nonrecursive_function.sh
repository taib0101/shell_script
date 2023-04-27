function add
{
    local sum=$(( $1 + $2 ))
    echo $sum

    function jog
    {
        return $(($1+$2))
    }
    jog 5 5
    inner_sum=$?
    echo "inner_sum : $inner_sum"
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