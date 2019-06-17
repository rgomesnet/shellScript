#!/bin/bash
##################################################################################
#
# primeiro_script.sh - Script de Exemplo do Curso
#
# Autor: Renato Gomes (renatogomesnet@gmail.com)
# Data criação: 27/abr/2019
#
# Descrição: Script de exemplo que lê data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./primeiro_script.sh
#
###################################################################################

DATAHORA=$(date +%H:%M)
ARQUIVOALUNOS="/home/rgomes/sources/udemy/shellScript/CursoShellScript/arquivos/alunos2.txt"

clear
echo -e "========Meu primeiro script =============\n"
echo -e "Exibir data e hora atual: $DATAHORA\n"
echo "Listagem dos alunos: "
sort $ARQUIVOALUNOS

DATAHORA=$(date +%H)
echo "=================================="
echo "Nova hora atual: $DATAHORA"

