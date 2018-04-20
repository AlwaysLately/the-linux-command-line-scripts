#!/bin/bash

# test-file: evaluate the status of the file

file="/Users/didi/.bashrc"
# file=""

if [ -e $file ]; then
	echo "file is exit!"
	if [ -d $file ]; then
		echo "$file is a directory"
	fi
	if [ -f "$file" ]; then
		echo "$file is a regular file"
	fi
	if [ -r "$file" ]; then
		echo "$file is readable"
	fi 
	if [ -w "$file" ]; then
		echo "$file is writeable"
	fi
	if [ -x "$file" ]; then
		echo "$file is ececutable"
	fi
else
	echo "file is not exit!"
	exit 1
fi

exit