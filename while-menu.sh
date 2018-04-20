#!/bin/bash

# while menu: a menu driven system information program

DELAY=3 #Number of seconds to display results

while [[ $REPLY != 0 ]]; do
	#statements
	clear
	#output to stdin
	cat <<-  A
		Please Select:

			1.Display System Information
			2.Display Disk Space
			3.Display Home Page Ultilization
			0.quit
	A

	read -p "Enter Selection [0-3]"

	if [[ $REPLY =~ ^[0-3]$ ]]; then
	 	#statements
	 	if [[ $REPLY == 1 ]]; then
	 		#statements
	 		echo "HOSTNAME: $HOSTNAME"
	 		uptime
	 		sleep $DELAY
	 	fi
	 	if [[ $REPLY == 2 ]]; then
	 		#statements
	 		df -h
	 		sleep $DELAY
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
	 		sleep $DELAY
	 	fi
	 	# if [[ $REPLY == 0 ]]; then
	 	# 	#statements
	 	# 	echo "Program Terminated：BYE"
	 	# 	exit
	 	# fi
	else
		echo "Invalid Entry" >&2
		sleep $DELAY
	fi

done

echo "Program Terminated：BYE."
exit
