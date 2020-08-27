#! /bin/bash

# Config
trimal_path=~/Descargas/trimal-trimAl/source #Ruta trimal

# Script
mkdir -p results/TRIMAL/
Lista_seq=$(ls results/MAFFT)
for i in $Lista_seq
do
   "$trimal_path"/trimal -in results/MAFFT/$i -out results/TRIMAL/"$i"_trim -keepheader -gt 0.9 -cons 60
done