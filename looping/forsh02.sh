#!/bin/bash

ALUNOS="`(ls -1)`"

for arquivo in $ALUNOS
do
	echo "O arquivo atual é $arquivo"
done
