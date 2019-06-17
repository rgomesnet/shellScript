#/bin/bash

x=1
until [ $x -eq 20 ]
do
	echo "O valor atual é $x"
	x=$(expr $x + 1)
done
