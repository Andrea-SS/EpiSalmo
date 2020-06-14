#! /bin/bash

# Config
amas_path=~/anaconda3/lib/python3.7/site-packages/amas

# Scripts
# Summary
python3 "$amas_path"/AMAS.py summary -f fasta -d dna -i results/TRIMAL/*trim -c 12

# Concatenar
python3 "$amas_path"/AMAS.py concat -i results/TRIMAL/*trim -f fasta -d dna