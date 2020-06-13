#! /bin/bash

#QUAST:Quality Assessment Tool for Genome Assemblies.

# Config
path_quast="/home/andrea/anaconda3/lib/python3.7/site-packages/multiqc/modules/quast" # Ruta del archivo de quast

# Script
lista_seq=$(ls results/SPADES)
mkdir -p results/QUAST

for line in lista_seq
do  
    name=$($line | cut -d'/' -f3)
    mkdir -p results/QUAST/$name
	"$path_quast"/quast.py -o results/QUAST/$name $line/contigs.fasta;	
done;
