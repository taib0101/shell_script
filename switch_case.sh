read -p "How old are you?[y/n] : " ans

case "$ans" in
    [yY] | [yY][eE][sS] | [sS])
        echo "You may smoke marijuana"
    ;;
    [nN] | [nN][oO] | [oO])
        echo "You need to 18+ age"
    ;;
    *)
        echo "Wrong Input ..input again"
    ;;
esac
    
read -p "take a name " name

case "$name" in
    "taib" | "brother" | [a-z] | [0-8] | [A-Z])
        echo "hello $name"
    ;;
    "mother")
        echo "hola $name"
    ;;
    *)
        echo "you are not our guy, just leave"
    ;;
esac