read -p "How old are you?[y/n] : " ans

case "$ans" in
    [yY] | [yY][eE][sS] | [sS])
        echo "You may smoke marijuana"
    ;;
    [nN] | [nN][oO] | [oO])
        echo "You need to 18+ age"
    ;;
    *)
        echo "Wrong Input .. Input right input again"
    ;;
esac
    
