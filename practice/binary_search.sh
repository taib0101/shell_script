function merge_sort
{
    local ll=$1
    local hh=$2
    local mid=$(($(($ll+$hh)) / 2))
    if [ $ll -eq $hh ]
    then
        return
    fi
    merge_sort $ll $mid
    merge_sort $(($mid+1)) $hh

    local tmp=($(seq $l $(($h+5))))
    for((i=$ll,j=$(($mid+1)),k=$ll; $k <= $h; ++k))
    do
        if [ $i -eq $(($mid+1)) ]
        then
            tmp[$k]=${arr[$j]}
            j=$(($j+1))
        elif [ $j -eq $(($hh+1)) ]
        then
            tmp[$k]=${arr[$i]}
            i=$(($i+1))
        elif [ ${arr[$i]} -ge ${arr[$j]} ]
        then
            tmp[$k]=${arr[$j]}
            j=$(($j+1))
        else
            tmp[$k]=${arr[$i]}
            i=$(($i+1))
        fi
    done
    for((i=$ll; $i <= $hh; ++i))
    do
        arr[$i]=${tmp[$i]}
    done
    return
}

function binary_search
{
    local ll=$1
    local hh=$2
    local xx=$3
    while [ $ll -le $hh ]
    do
        local mid=$(($(($ll+$hh)) / 2 ))
        if [ ${arr[$mid]} -lt $xx ]
        then
            ll=$(($mid + 1))
        elif (( ${arr[$mid]} > $xx ))
        then
            hh=$(($mid - 1))
        else
            return 1
        fi
    done
    return 0
}

echo -n "Input a array : "
read -a arr
l=0
h=$((${#arr[@]}-1))
echo "Array is : ${arr[@]}"

echo "low = $l , high = $h"
merge_sort $l $h
echo "sorted array"
echo "${arr[@]}"
read -p "Enter a value for searching a value : " n
i=1
while [ $i -le $n ]
do
    read -p "Enter a value : " x
    binary_search $l $h $x
    bb=$?

    if (( $bb == 1))
    then
        echo "element found"
    else
        echo "element not found"
    fi
    i=$(($i+1))
done
