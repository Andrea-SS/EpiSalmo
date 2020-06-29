#! /bin/bash

# Config
amas_path=~/anaconda3/lib/python3.7/site-packages/amas
cores=4
mkdir -p results/AMAS/100
cd results/AMAS/100
# Summary
python3 "$amas_path"/AMAS.py summary -f fasta -d dna -i ../../MAFFT/*ali -c $cores
cd ../../..