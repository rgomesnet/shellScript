#!/bin/bash

clear
read -p "Informe o início da sequência: " INICIO
read -p "Informe o final da sequeência: " FINAL

for i in $(seq "$INICIO" "$FINAL")
do
	sleep 1
	echo "Exibindo o valor $i"
done
