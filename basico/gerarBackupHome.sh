#!/bin/bash

#################################################################################
#                                                                               #
# Nome: gerarBackupHome.sh                                                      #
#                                                                               #
# Autor: Renato Gomes (renatogomesnet@gmail.com)                                #
# Data: 19/05/2019                                                              #
#                                                                               #
# Descrição: O script fará um backup compactado do diretório home               #
#            do usuário que estiver executando o script.                        #
# Uso: ./gerarBackupHome.sh                                                     #
#                                                                               #
#################################################################################

DIRETORIO_DESTINO=$HOME/backup

if [ ! -d $DIRETORIO_DESTINO ]
then
	echo "Criando o diretório $DIRETORIO_DESTINO..."
	mkdir -p $DIRETORIO_DESTINO
fi

CRIADO_7_DIAS_ATRAS=$(find $DIRETORIO_DESTINO -ctime -7 -name backup_home\*tgz)

if [ "$CRIADO_7_DIAS_ATRAS" ] # Testa se a variável é nula.
then
	echo "Já foi gerado um backup do diretório $HOME nos últimos 7 dias."
	echo -n "Deseja continuar? (N/S): "
	read -n1 CONTINUAR
	echo

	if [ "$CONTINUAR" = N -o "$CONTINUAR" = n -o "$CONTINUAR" = "" ]
	then
		echo "Backup abortado!"
		exit 1
	elif [ $CONTINUAR = S -o $CONTINUAR = s ]
	then
		echo "Será criado mais um backup para a mesma semana"
	else
		echo "Opção inválida"
		exit 2
	fi
fi

echo "Criando backup..."
ARQUIVO_BACKUP="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $DIRETORIO_DESTINO/$ARQUIVO_BACKUP --absolute-names --exclude="$HOME/Google Drive" --exclude="$HOME/Videos" --exclude="$DIRETORIO_DESTINO" --exclude="$HOME/CertSoluti" --exclude="$HOME/Downloads" --exclude="$HOME/samba" --exclude="$HOME/vsts" --exclude="$HOME/Pictures" --exclude="$HOME/protrader" --exclude="$HOME/sources" "$HOME"/* > /dev/null

echo
echo "O backup de nome \""$ARQUIVO_DESTINO"\" foi criado em $DIRETORIO_DESTINO"
echo 
echo "Backup concluído!"
