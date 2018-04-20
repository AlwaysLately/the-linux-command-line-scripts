#/bin/bash

# longest-word: find the longest string of file


while [[ -n $1 ]]; do
	#statements
	if [[ -r $1 ]]; then
		#statements
		max_word=
		max_len=0
		for i in $(strings $1); do
			#statements
			len=$(echo $1 | wc -c)
			echo "len :$len"
			if (( len > max_len)); then
				#statements
				max_len=$len
				max_word=$i
			fi
		done
		echo "$1: '$max_word' ($max_len characters)"
	fi
	shift
done