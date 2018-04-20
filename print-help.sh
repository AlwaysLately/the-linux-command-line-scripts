#/bin/bash

# print-help: print interactive information

usage () {
	echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
	return
}

# process command line options

interactive=

filename=

while [[ -n $1 ]]; do
 	#statements
 	case $1 in
 		-f | --file )
			shift
			filename=$1
 			;;
 		-i | --interactive)
 			interactive=1
 			;;
 		-h | --help)
			usage
			exit
			;;
		*)
			usage>&2
			exit 1
			;;
 	esac
 	shift
 done 