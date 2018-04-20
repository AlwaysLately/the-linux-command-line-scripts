#!/bin/bash -x

# integer-test: evaluate the value of an integer

INT=5

if [ -z "$INT" ]; then
	#statements
	echo "INT is empty!"
	exit 1
fi

if [ $INT -eq 0 ]; then
	echo "INT equal 0"
else
	if [ $INT -lt 0 ]; then
		#statements
		echo "INT is negative"
	fi
	if [ $INT -gt 0 ]; then
		#statements
		echo "INT is postive"
	fi
	if [ $((INT % 2)) -eq 0 ]; then
		#statements
		echo "INT is even"
    else
    	echo "INT is odd"
    fi
fi

exit