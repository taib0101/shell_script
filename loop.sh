echo "print 1 - n using for loop"
read -p "Enter a value : " n

for(( i=1,j=1 ; "$i" <= "$n" ; ++i , ++j))   #for((i=1,j=1;"$i"<="$n" || "$j"<="5";++i,++j)) -> this is also valid
do
    echo -n "$i "
done
echo -e "\n" #this is for new line

echo "print 1 - n using while loop"
read -p "Enter another a value : " n

i=1
j=1
# while [ "$i" -le "$n" -a "$j" -le "5" ] -> this is also valid
while (( "$i" <= "$n" && "$j" <= "5" ))
do 
    echo -n "$i "
    i=$(($i+1))
    # (( i++ )) -> this is also valid
    j=$(($j+1))
    # sleep 2
done
echo -e "\n"

echo "showing the file in bin directory"
dir="/bin"

for i in $dir/*
do 
    echo "$i"
done

echo "showing the file in current directory"
echo -e "\n"

for i in *
do 
    echo "$i"
done