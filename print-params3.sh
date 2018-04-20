#!/bin/bash

# posit-params3: script to demonstrate $* and $@

print_params () {
	echo -e "\$1 = $1"
	echo -e "\$2 = $2"
	echo -e "\$3 = $3"
	echo -e "\$4 = $4"
}

pass_params () {
	echo -e "\n" '$* :'; print_params $*
	echo -e "\n" '"$*" :'; print_params "$*"
	echo -e "\n" '$@ :'; print_params $@
	echo -e "\n" '"$@" :'; print_params "$@"
}

pass_params "word" "word with spaces"