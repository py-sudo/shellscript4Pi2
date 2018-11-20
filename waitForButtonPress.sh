#!/bin/bash
while :
	do
		bit_five=$(gpio read 5)
		if [ "$bit_five" -eq 0 ]
			then
				echo "button pressed"
				break
			fi

	done 