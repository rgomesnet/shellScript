#!/bin/bash

for i in $(ls -l)
do
	if [ -d $i ]
	then
            $(cd $i; touch novoarquivo.txt)
	fi
done
