for i in {1..9}
do
    for j in {1..9}
    do
        ij=`expr $i + $j`;
        isprint=`expr $ij % 2`;
        if (( $isprint == 1 ));
        then
            echo -e -n "\033[0m  ";
        else
            echo -e -n "\033[41m  ";
        fi
    done
    echo -e "\033[0m  ";
done
