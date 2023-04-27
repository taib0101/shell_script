function reverse
{
    local str=$1
    shift 1 #shift is most important thing in bash
            #it will shift the value from left side
    echo "$str"
    local arr=("$@")
    echo "${arr[@]}"
}
echo -n "Read array1 : "
read -a arr1
echo -n "Read array2 : "
read -a arr2

echo "unreversed array is : ${arr1[@]}"
# unset arr2
x=($(reverse 10 ${arr1[@]}))
echo "reversed array is : ${x[0]}"



#!/bin/bash

# function my_func() {
#     local arr=("apple" "banana" "orange")
#     local val1="hello"
#     local val2="world"
#     echo "$val1"
#     echo "$val2"
#     echo "${arr[@]}"
# }

# # calling the function
# output=($(my_func))
# val1="${output[0]}"
# val2="${output[1]}"
# arr=("${output[@]:2}")

# echo "val1: $val1"
# echo "val2: $val2"
# echo "arr: ${arr[@]}"
