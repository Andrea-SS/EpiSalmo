#! /bin/bash
#Cuando hay demasiadas muestras AMAS summary consume demasiada ram por lo que hay ejecutar el escript fichero a fichero
# Config
amas_path=~/anaconda3/lib/python3.7/site-packages/amas
cores=4
mkdir -p results/AMAS/summary_90_new
# Summary
lista=$(ls results/TRIMAL/90_new)
for i in $lista
do
	echo $i
	python3 "$amas_path"/AMAS.py summary -f fasta -d dna -i results/TRIMAL/90_new/$i -c $cores -o results/AMAS/summary_90_new/"$i"_out
done

