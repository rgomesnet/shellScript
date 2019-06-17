#!/bin/bash

# hora >= 6 < 12 = Bom dia
# hora >= 12 < 18 = Boa tarde
# hora >=18 = Boa noite


HORA=$(date +"%H")

if [ $HORA -ge 6 -a $HORA -lt 12 ]
then
	echo "Bom dia"
elif [ $HORA -ge 12 -a $HORA -lt 18 ]
then
	echo "Boa tarde"
elif [ $HORA -ge 18 -a $HORA -le 23 ]
then
	echo "Boa noite"
fi

echo "A hora atual é: $(date +"%H:%M")"
