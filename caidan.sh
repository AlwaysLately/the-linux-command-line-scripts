#!/bin/bash

# read-menu: a menu driven system information program

clear
echo "
Please Select:

1.Display System Information
2.Display Disk Space
3.Display Home Page Ultilization
0.quit

"

read -p "Enter selection [0-3] >"

if [[ $REPLY =~ ^[0-3]$ ]]; then
 	#statements
 	if [[ $REPLY == 1 ]]; then
 		#statements
 		echo "HOSTNAME: $HOSTNAME"
 		uptime
 		exit
 	fi
 	if [[ $REPLY == 2 ]]; then
 		#statements
 		df -h
 		exit
 	fi
 	if [[ $REPLY == 3 ]]; then
 		#statements
 		if [[ $(id -u) -eq 0 ]]; then
 			#statements
 			echo "Home Space Ultilization(All User):"
 			du -sh /home/*
 		else
 			echo "Home Space Ultilization($USER)"
 			du -sh $HOME
 		fi
 		exit
 	fi
 	if [[ $REPLY == 0 ]]; then
 		#statements
 		echo "Program Terminated：BYE"
 		exit
 	fi
else
	echo "Invalid Entry" >&2
	exit 1
fi 
