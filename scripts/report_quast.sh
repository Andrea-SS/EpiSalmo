#! /bin/bash


lista=$(ls results/QUAST)

for i in $lista
do
	linea=$(awk "NR==2" $i/transposed_report.tsv)
	echo "$i\t$linea" >> results/summary_quast.txt
done