#!/bin/bash

clear
read -p "Informe o limite de processos: " MAXIMO

PROCESSOS="$(ps aux | wc -l)"
while [ $PROCESSOS -le $MAXIMO ]
do
	echo "Tudo ok"
	echo "Processos atuais: $PROCESSOS"
	sleep 3
        PROCESSOS="$(ps aux | wc -l)"
	echo
done

echo "Limite de processos excedido"
echo "Por favor verifique o sistema"
