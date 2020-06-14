#! /bin/bash

# Script
lista_seq=$(ls results/SPADES)
mkdir -p results/SISTR

for name in $lista_seq
do      
    mkdir -p results/SISTR/$name
    echo $name
	sistr --qc -t 4 -a results/SISTR/$name/"$name"_alelos_out -n results/SISTR/$name/"$name"_novel-alleles.fasta -p results/SISTR/$name/"$name"_cgmlst-profiles.csv -f csv -o results/SISTR/$name/"$name"_sistr-output.csv -i results/SPADES/$name/contigs.fasta $name
done