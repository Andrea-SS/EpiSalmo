#! /bin/bash

#QUAST:Quality Assessment Tool for Genome Assemblies.

# Config
path_quast="./quast-5.0.2" # Ruta del archivo de quast
threads=4 # Número de hilos

# Script
lista_seq=$(ls results/SPADES)
mkdir -p results/QUAST

for line in $lista_seq
do  
    echo $line    
    mkdir -p results/QUAST/$line
	"$path_quast"/quast.py -o results/QUAST/$line results/SPADES/$line/contigs.fasta -t $threads	
done
