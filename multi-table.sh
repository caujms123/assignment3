#!/bin/bash
if [ $# -lt 2 ]; then
    echo  "Invaild input"
    exit 1
fi

is_number() {
    if [[ $1 =~ ^-?[0-9]+$ ]]; then
        return 0
    else
        return 1
    fi
}

if ! is_number $1 || ! is_number $2; then
    echo "Invalid input"
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
