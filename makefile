all: create
name_file := guessinggame.sh
create:
	touch README.md
	echo -n > README.md
	echo "The title of the project: game" >> README.md
	echo "The date and time at which make was run: " $(shell date '+%d.%m.%y %H:%M:%S') >> README.md
	echo "The number of lines of code contained in guessinggame.sh: " $(shell cat $(name_file) | wc -l)  >> README.md 

