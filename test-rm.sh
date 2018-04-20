#!/bin/bash -x

# test-rm: rm file with test 

read -p "input the file you want to delete:" DIR

if [[ -d $DIR ]]; then
echo "$DIR is directory"
	#statements
	if cd $DIR; then
		#statements
		echo rm *
	else
		echo "cannot cd to '$DIR'" >&2
		exit 1
	fi
else
echo "$DIR is not exit"
	echo "no such directory: '$DIR'" >&2
	exit 1
fi

exit