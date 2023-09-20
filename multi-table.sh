#!/bin/sh
if [ $# -lt 2 ]; then
    echo  "Invaild input"
    exit 1
fi

is_positive_number() {
    case $1 in
        ''|*[!0-9]*)
            return 1
            ;;
        *)
            return 0
            ;;
    esac;
}

if ! is_positive_number $1 || ! is_positive_number $2; then
    echo "Invalid input ( Negative or not a number )"
    exit 1
fi


if [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
	echo "Input must be greater than 0"
	exit 1;
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		printf "$i*$j = %d  " `expr $i \* $j`
 	done
	printf "\n"	
done

exit 0
