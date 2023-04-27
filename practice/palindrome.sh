function palindrome
{
    local strr="$@" #it is string thats way use this for array it will ("@")
    local str1="$strr"
    local str2=""
    local length=${#strr} # length="${#strr}" same shitt
    for((i=$(($length-1)) ; $i >= 0; --i))
    do
        str2+="${str1:$i:1}"
    done
    # echo "str2 = $str2"
    if [ "$str1" == "$str2" ]
    then
        echo "1"
    else
        echo "0"
    fi
}


read -p "Write a string for checking palindrome: " str
echo "String is $str"

if [ $(palindrome "$str") -eq 1 ] #used semi colon beacuse it is a string
then
    echo "String is palindrome"
else
    echo "String is not palindrome"
fi