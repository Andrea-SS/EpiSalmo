#! /bin/bash

listaseq=$(ls ../fna)

for linea in $listaseq
do
	phigaro -f ../fna/$linea -o outphigaro/$linea -e tsv -d -p --not-open -t 4
done

