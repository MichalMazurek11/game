#!/bin/bash
# guessinggame
Con () {
	echo "Congratulations!"
}
#FOR ALL FILES ls -Al |grep '^[-dlspDc]'|wc -l
number_files="$(ls -Al |grep '^[-dlspDc]'|wc -l)" 
#FOR REGULAR TYPE FILES
#number_files="$(ls -al |grep '^-')"
check_if_number='^[0-9]+$'
to_quess=-1
while [[ $to_quess -ne $number_files ]]
do
	echo -n "How many files are in the current directory?: " 
	read  to_quess
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
	else
		to_quess=-1
		echo "Enter a number"
	fi
done
Con
