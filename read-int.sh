#!/bin/bash

# read integer: evaluate the value of an integer

echo -n "Please enter an integer -> "

read integer

if [[ "$integer" =~ ^[0-9]+$ ]]; then
	#statements
	if [ $integer -eq 0 ]; then
		#statements
		echo "$integer is zero"
	else
		if [ $integer -lt 0 ]; then
			#statements
			echo "$integer is negative"
		else
			echo "$integer is postive"
		fi
		if [ $((integer % 2)) -eq 0 ]; then
			#statements
			echo "$integer is even"
		else
			echo "$integer is odd"
		fi
	fi
else
	echo "Input value is not an integer." >&2
	exit 1

fi

exit