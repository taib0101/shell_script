##################################
#String compare with shell script#
##################################

read -p "Enter a string : " str1
read -p "Enter another string : " str2

if [ "$str1" == "$str2" ]
# if (( "$str1" == "$str2" )) it's also a valid if_else condition
then
    echo -e "String are equal \n"
elif [ "$str1" != "$str2" ]
then
    echo -e "String are not equal \n"
else
    echo "no option"
fi

###################################
#Integer compare with shell script#
###################################
echo -n "Enter a integer : "
read x
echo -n "Enter another integer : "
read y

if [ "$x" -ge "$y" ]
then
    if [ "$x" -gt "$y" ]
    then
        echo "$x is greater then $y"
    else
        echo "$x is equal to $y"
    fi
elif [ "$x" -lt "$y" ]
then
    echo "$x is less then $y"
fi
#####################################################
# -eq represent that integer are equal              #
# -ne represent that integer are not equal          #
# -lt represent that integer x less then y          #
# -le represent that integer x less then equal y    #
# -gt represent that integer x greater then y       #
# -ge represent that integer x greatee then equal y #
#####################################################

###################################
#file compare with shell script   #
###################################

echo "Enter a file name : "
read file

if [ -f "$file" ]
then
    echo "$file is exist"
else
    echo "$file is not exist"
fi

##########################################################
# -d file True if the file is a directory                #
# -e file True if the file exists (note that this        #
# is not particullary portable,thus -f is generally used)#
# -f file True if the provided string is a file          #
# -g file True if the group id is set on a file          #
# -r file True if the file is readble                    #
# -s file True if the file has a non-zero size           #
# -u file True if the user id is set on a file           #
# -w file True if the file is writable                   #
# -x file True if the file is executable                 #
##########################################################
