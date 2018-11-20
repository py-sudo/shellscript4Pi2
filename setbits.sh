#!/bin/bash
args=$#
if [ $args -ne 1 ]
then
	echo "invalid # of args"
else
	n=$1
	re='^[0-9]+$'
	if ! [[ $n =~ $re ]]  
		then
   			echo "error: Not a valid input " >&2; 
			exit 1
	fi
	#if [ $n -gt 15 ] 
	#	then 
	#		echo "$n needs to be smaller than 15"
	#fi
	#if [ $n -lt 0 ]
	#	then
	#		echo "$n needs to be greater than 0"
	#fi

	let "bit_zero=(n>>0)&1"
	let "bit_one=(n>>1)&1"
	let "bit_two=(n>>2)&1"
	let "bit_three=(n>>3)&1"

	gpio write 0 0
	gpio write 1 0
	gpio write 2 0
	gpio write 3 0


	if [ $bit_zero -eq 1 ]
		then 
			gpio write 0 1
			echo "bit O is 1"
		else
		echo "bit 0 is 0"
	fi
	if [ $bit_one -eq 1 ]
		then 
			gpio write 1 1
			echo bit 1 is 1
		else
		echo "bit 1 is 0"
	fi	

	if [ $bit_two -eq 1 ]
		then 
			gpio write 2 1
			echo "bit 2 is 1"
		else
		echo "bit 2 is 0"
	fi

	if [ $bit_three -eq 1 ]
		then 
			gpio write 3 1
			echo "bit 3 is 1"
		else
		echo "bit 3 is 0"
	fi
fi
