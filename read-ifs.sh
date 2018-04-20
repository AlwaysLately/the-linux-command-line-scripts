#!/bin/bash

# read-ifs: read fields from a file


FILE=/etc/passwd

read -p "Enter a username:"  username

fileinfo=$(grep "$username" $FILE)

if [ -n "$fileinfo" ]; then
	#statements
	IFS=":" read user pw uid gid name host shell <<< "$fileinfo"
	echo "User  =           '$user'"
	echo "Pw    =           '$pw'"
	echo "UID   =           '$uid'"
	echo "GID   =           '$gid'"
	echo "Name  =           '$name'"
	echo "Host  =           '$host'"
	echo "Shell =           '$shell'"
else
	echo "No such user '$username'" >&2
	exit 1
fi
