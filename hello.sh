read -p "Enter your name : " x
echo "Hello $x"

read -sp "Enter your password : " y
echo -e "\n"
echo "password broke like $y"

read
echo "tell your nick name $REPLY"

##################################
# -p represent that you can 	 #
# read with print line	    	 #
# -s represent that you can 	 #
# read with hiding , you do 	 #
# -sp also but you cant do -ps 	 #
# if read is forgotten to take   #
# variable as input $REPLY works #
# in shell built in              #
##################################
