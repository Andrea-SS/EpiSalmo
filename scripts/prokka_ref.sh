#! /bin/bash

# Config
#path_prokka="/home/andrea/prokka/bin" # Ruta del archivo de prokka
path_prokka="docker run staphb/prokka:latest"
cores=2

# Script
lista_seq=$(ls -d samples/referencias/*)
mkdir -p results/PROKKA_ref

for line in $lista_seq
do      
    name=$(echo $line | cut -d'/' -f3 | cut -d'.' -f1)
    echo $name       
    mkdir -p results/PROKKA_ref/"$name"_prokka
	docker run --rm=True -v $PWD:/data staphb/prokka:latest prokka --outdir /data/results/PROKKA_ref/${name}_prokka --prefix ${name} --cpu 2 --force /data/samples/referencias/${name}.fasta
done
