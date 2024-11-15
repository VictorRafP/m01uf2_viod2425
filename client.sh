#1! /bin/bash

PORT="2022"

echo "Cliente de Dragón Magia Abuelita Miedo 2022"

echo "1. ENVIO DE CABECERA"
echo "DMAM" | nc localhost $PORT
DATA=`nc -l $PORT`

echo "3. COMPROBANDO HEADER"
if [ "$DATA" != "OK_HEADER" ]
then
	echo "ERROR 1: El header se envió incorrectamente"
	exit 1
fi

echo "4. CHECK OK - Enviando FILE_NAME"

FILE_NAME="dragon.txt"
echo "FILE_NAME $FILE_NAME" | nc localhost $PORT
DATA=`nc -l $PORT`

if [ "$DATA" != "OK_FILE_NAME" ]
then
	echo "ERROR 2: El prefijo se envió incorrectamente"
	exit 2
fi

echo "7. CHECK OK" 

