#!/bin/bash

###########################################################################
#                                                                         #
# Nome: maquinaRelatorio.sh                                               #
# Autor: Renato Gomes (renatogomesnet@gmail.com)                          #
# Data:  01/maio/2019                                                     #
# Descrição: O script gera um relatório com as principais informações     #
#            da máquina em questão                                        #
# Uso:   ./maquinaRelatorio.sh                                            #
#                                                                         #
###########################################################################

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNRO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEMTOTAL=$(free -h | grep -i mem | tr -s " " | cut -d " " -f2)
UPTIME=$(uptime -s)
FILESYS=$(df -Th | egrep -v '(tmpfs|udev)')

clear
echo "================================================================"
echo "Relatório da Máquina: $HOSTNAME                                 "
echo "Data/Hora: $(date)                                              "
echo "================================================================"
echo " "
echo "Máquina Ativa desde: $UPTIME                                    "
echo " "
echo "Versão do Kernel: $KERNEL                                       "
echo " "
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CPUNRO"
echo "Modelo da CPU: $CPUMODEL"
echo "Memória Total: $MEMTOTAL"
echo " "
echo "Partições:"
echo "$FILESYS"
echo "================================================================"
exit 0