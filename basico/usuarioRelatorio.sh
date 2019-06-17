#!/bin/bash

###########################################################################
#                                                                         #
# Nome: usuarioRelatorio.sh                                               #
# Autor: Renato Gomes (renatogomesnet@gmail.com)                          #
# Data:  01/maio/2019                                                     #
# Descrição: O script gera um relatório com as principais informações     #
#            de um usuário do sistema                                     #
# Uso:   ./usuarioRelatorio.sh <usuario>                                  #
#                                                                         #
###########################################################################

ls /home/$1 > /dev/null 2>&1 || { echo "Usuário inexistente"; exit 1; }

USUARIO_COMPLETO=$(cat /etc/passwd | grep -i $1)
USERID=$(echo $USUARIO_COMPLETO | cut -d":" -f3)
USERNAME=$(echo $USUARIO_COMPLETO | cut -d":" -f5 | tr -d ,)
DIRETORIO_HOME=$(echo $USUARIO_COMPLETO | cut -d":" -f6)
DIRETORIO_HOME_TAM=$(du -sh $DIRETORIO_HOME | tr -s "\t" " " | cut -d" " -f1)

clear
echo "=========================================================================="
echo "Relatório do usuário: $1"
echo "UID: $USERID"
echo "Nome ou descrição: $.br/ap/signin/139-0248645-5255277?_encoding=UTF8&openid.assoc_handle=brflex&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&openid.ns.pape=http%3A%2F%2Fspecs.openid.net%2Fextensions%2Fpape%2F1.0&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2Fgp%2Fyourstore%2Fhome%2F139-0248645-5255277%3Fie%3DUTF8%26action%3Dsign-out%26path%3D%252Fgp%252Fyourstore%252Fhome%26ref_%3Dnav_youraccount_signout%26signIn%3D1%26useRedirectOnSuccess%3D1USERNAME"
echo
echo "Total usado no $DIRETORIO_HOME $DIRETORIO_HOME_TAM"
echo "Último Login:"
echo "$(lastlog -u $1)"
echo "=========================================================================="
exit 0