tput clear
read -p "Read something : " str

screen_info=$(infocmp screen)
echo -e "infocmp screen : "
echo "${screen_info}"

longname=$(tput longname)
echo "tput longname : ${longname}"

lines=$(tput lines)
echo "tput lines : ${lines}" # basically it shows the current terminal totall size

cols=$(tput cols)
echo "tput cols : ${cols}"

colors=$(tput colors)
echo "tput colors : ${colors}"

#########################################
# tput setaf <value>                    #
# 0	 Black                              #
# 1	 Red                                #
# 2	 Green                              #
# 3	 Yellow                             #
# 4	 Blue                               #
# 5	 Magenta                            #
# 6	 Cyan                               #
# 7	 White                              #
# 8	 Not used                           #
# 9	 Reset to default color             #
# thoose all are front end              #                           
#########################################

#########################################
# Examples: tput bold                   #
# bold	Start bold text                 #
# smul	Start underlined text           #
# rmul	End underlined text             #
# rev	Start reverse video             #
# blink	Start blinking text             #
# invis	Start invisible text            #
# smso	Start “standout” mode           #
# rmso	End “standout” mode             #
# sgr0	Turn off all attributes         #
# setaf <value>	Set foreground color    #
# setab <value>	Set background color    #
#########################################

red=$(tput setaf 1)
reset=$(tput sgr0) # grand father off all reset

echo "${red}$str${reset}"

red_back=$(tput setab 1)
echo "${red_back}$str${reset}"
printf "${red}hello${reset}\n"

bold=$(tput bold)
smul=$(tput smul)
rev=$(tput rev)
blink=$(tput blink)
invis=$(tput invis)
smso=$(tput smso)

echo "tput bold : ${bold}${red}$str${reset}"
printf "tput smul : ${smul}${red}$str${reset}\n"
echo "tput rev : \"${rev}${red}$str${reset}\""
printf "tput blink : ${blink}${red}$str${reset}\n"
echo "tput invis : ${invis}${red}$str${reset}"
echo "tput smso : ${smso}${red}$str${reset}"

#Also see this command "banner"
printf "\n"
banner "Taib"