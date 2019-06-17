#!/bin/bash

###########################################################################
# Nome: somaValores.sh                                                    #
# Autor: Renato Gomes (renatogomesnet@gmail.com)                          #
# Data:  01/maio/2019                                                     #
# Descrição: O script faz a soma de dois valores inseridos pelo o usuário #
# Uso:   ./somaValores.sh                                                 #
###########################################################################

read -p "Informe o primeiro valor: " VALOR01
read -p "Informe o segundo valor: "  VALOR02
echo
echo "A soma de $VALOR01 + $VALOR02 é $(expr $VALOR01 + $VALOR02)"