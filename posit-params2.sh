#/bin/bash

# post-params2: scripts to display all arguments

count=1

while [[ $# -gt 0 ]]; do
	#statements
	echo "Arguments $count = $1"
	count=$((count+1))
	shift
done