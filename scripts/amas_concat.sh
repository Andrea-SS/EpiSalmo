#! /bin/bash

# Config
amas_path=~/anaconda3/lib/python3.7/site-packages/amas
cores=4
mkdir -p results/AMAS
cd results/AMAS

# Concatenar
python3 "$amas_path"/AMAS.py concat -i ../TRIMAL/*trim -f fasta -d dna -c $cores