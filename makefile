all: create
name_file := guessinggame.sh
create:
	touch README.md
	echo -n > README.md
	echo "game" >> README.md
	echo  $(shell date '+%d.%m.%y %H:%M:%S') >> README.md
	echo  $(shell cat $(name_file) | wc -l)  >> README.md 

