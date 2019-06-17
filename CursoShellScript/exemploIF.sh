#!/bin/bash

USUARIO=$(grep "$1" /etc/passwd)
echo $USUARIO

#if test -n "$USUARIO"
if [ -n "$USUARIO" ]
then
	echo "O usuário existe"
else
	echo "O usuário não existe"
fi
