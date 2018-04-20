#!/bin/bash

# case-menu: a menu driven system information

clear

echo "
	please input your selection 
	1. Display system information
	2. Display Disk usage
	3. Display Home space ultralization
	0. Quit

"
read -p "Enter selection [0-3]"

case $REPLY in
	0 )	echo "program terminated!"
		exit
		;;
	1 ) echo "HOSTNAME: $HOSTNAME"
		uptime
		exit
		;;
	2 ) df -h
		exit
		;;
	3 ) if [[ $(id -u) -eq 0 ]]; then
			#statements
			echo "Homespace ultization for all users"
			ds -sh /home/*
		else
			echo "Homespace ultization for $USER"
			ds -sh $HOME
		exit
		fi
		;;
	* ) echo "input invalid entry "
		exit 1
		;;
esac