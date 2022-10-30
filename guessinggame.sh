#!/bin/bash
# guessinggame
Con () {
	echo "Congratulations!"
}
number_files="$(ls -pa |grep -v /|wc -l)" 
check_if_number='^[0-9]+$'
while [[ $to_quess -ne $number_files ]]
do
	echo -n "How many files are in the current directory?: " 
	read to_quess
	if [[ $to_quess =~ $check_if_number ]]
	then
		if [[ $to_quess -gt $number_files ]]
		then
			echo "less"
		fi
		if [[ $to_quess -lt $number_files ]] 
		then
			echo "more"
		fi
	fi
done
Con
