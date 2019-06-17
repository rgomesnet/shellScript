#!/bin/bash

HORA=$(date +%H)
MIN=$(date +%M)

# Case para definir período
# Considerando que entre 00:00h até as 06:00 é noite
echo
case $HORA in 
	0[6-9] | 1[01])
		echo "Bom dia"
		;;
	1[2-7])
		echo "Boa tarde"
		;;
	*)
		echo "Boa noite"
		;;
esac

if [ $HORA -ge 12 ]
then
	AMPM=PM
	if [ $HORA -ne 12 ]
	then
		HORA=$(expr $HORA - 12)
	fi
else
	AMPM=AM
fi

echo
echo "A hora atual é: $HORA:$MIN $AMPN"
