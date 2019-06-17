#!/bin/bash

case "$1" in
	[0-9])
		echo "O parâmetro é um número"
		;;
	[A-Z])
                echo "O caracter informado é uma letra maiúscula"
                ;;
	[a-z])
	        echo "O caracter informado é uma letra minúscula"
                ;;
	*)
		echo "O parâmetro é um caracter especial"
esac
