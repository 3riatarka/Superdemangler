#!/bin/bash

# Colorines??? COLORINES!	
NC='\033[0m' # No color
RED='\033[0;31m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'

counter=0
match=0
actual=$1

while [[ match -eq 0 ]];
do
	#echo "Probando con $actual"
	resp=`echo "$actual" | ./demangler.sh`
	if [[ "$resp" != "$actual" ]];
	then
		match=1
		echo -e "\n${YELLOW}MATCH!\n\nOriginal: $1\nModified: $actual\n\n$resp${NC}"
	fi
	if [[ "$counter" -gt 25 ]];
	then
		print "${RED}Se han hecho más de 25 consultas, y no hay match.${NC}"
		exit 1
	fi
	actual=${actual::-1}
	counter=$((var+1))
done;
