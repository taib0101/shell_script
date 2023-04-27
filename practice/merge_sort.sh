arr=()
function merge_sort
{
    local ll="$1"
    local hh="$2"
    # echo "llow = $l,hhigh = $h,mmid = $mid"
    local mid=$(($(($ll + $hh)) / 2 ))
    if (( "$ll" == "$hh" ))
    then
        return
    fi
    merge_sort "$ll" "$mid"
    merge_sort "$(($mid+1))" "$hh"
    # echo "llow = $ll,hhigh = $hh,mmid = $mid"
    local tmp=($(seq $l $(($h+1))))
    echo "array = ${arr[@]}"
    for((i=$ll,j=$(($mid+1)),k=$ll; "$k" <= "$hh"; ++k))
    do
        # echo "i = ${arr[$i]} , j = ${arr[$j]}"
        if [ "$i" -eq "$(($mid+1))" ]
        then
            tmp[$k]="${arr[$j]}"
            j=$(($j+1))
        elif [ "$j" -eq "$(($hh+1))" ]
        then
            tmp[$k]=${arr[$i]}
            i=$(($i + 1))
        elif [ "${arr[$i]}" -ge "${arr[$j]}" ]
        then
            tmp[$k]="${arr[$j]}"
            j=$(($j+1))
        else
            tmp[$k]=${arr[$i]}
            i=$(($i+1))
        fi
    done
    for((i=$ll; "$i" <= "$hh"; ++i))
    do
        arr[$i]=${tmp[$i]}
    done
    return
}


echo -n "Read a array : "
read -a arr
l=0
h=$(("${#arr[@]}"-1))
merge_sort $l $h
echo "array = ${arr[@]}"