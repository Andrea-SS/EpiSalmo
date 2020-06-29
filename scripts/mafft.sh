#! /bin/bash

Lista_seq=$(ls results/PROTEINORTHO_90/orthologs-groups)
mkdir -p results/MAFFT/90
for i in $Lista_seq
do
   mafft --auto --adjustdirection results/PROTEINORTHO_90/orthologs-groups/$i > results/MAFFT/90/"$i"_ali
done
