#! /bin/bash


# Config
#path_prokka="/home/andrea/prokka/bin" # Ruta del archivo de prokka
path_prokka="docker run staphb/prokka:latest"

# Script
lista_seq=$(ls -d results/SPADES/*)
mkdir -p results/PROKKA

for line in $lista_seq
do  
    name=$(echo $line | cut -d'/' -f3)
    mkdir -p results/PROKKA/"$name"_prokka
	$path_prokka prokka --outdir results/PROKKA/"$name"_prokka --prefix $name --force ON $line/contigs.fasta 
done
