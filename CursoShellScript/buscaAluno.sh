#!/bin/bash

ARQALUNOS="/home/rgomes/sources/udemy/shellScript/CursoShellScript/arquivos/alunos2.txt"

clear
echo "============ Script de busca de alunos ============="
echo

#if test $# -gt 0
if [ $# -gt 0 ]
then
	ALUNOCOMPLETO=$(grep "$1" "$ARQALUNOS")
	echo "O nome completo do aluno é: "$ALUNOCOMPLETO""
else
	echo "Informe o nome do aluno como parâmetro!"
fi

echo
echo "Fim do script"
