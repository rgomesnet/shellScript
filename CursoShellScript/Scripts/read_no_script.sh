#!/bin/bash

ARQUIVO_ALUNOS="/home/rgomes/sources/udemy/shellScript/CursoShellScript/arquivos/alunos2.txt"
clear
echo "======================"
echo ""
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO
read -p "Por favor, informe o nome do aluno: " ALUNO

ALUNOCOMPLETO=$(grep "$ALUNO" $ARQUIVO_ALUNOS)

echo ""
echo "O nome completo do aluno é: $ALUNOCOMPLETO"
echo ""
echo "Fim do Script"
