#! /bin/bash


# Config
path_prokka="/home/andrea/prokka/bin" # Ruta del archivo de prokka

# Script
lista_seq=$(ls results/SPADES)
mkdir -p results/PROKKA

for line in lista_seq
do  
    name=$($line | cut -d'/' -f3)
    mkdir -p results/PROKKA/"$name"_prokka
	$path_prokka/prokka $line/contigs.fasta --outdir results/PROKKA/"$name"_prokka --prefix $name	
done
