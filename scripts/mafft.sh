#! /bin/bash

Lista_seq=$(ls results/PROTEINORTHO/orthologs-groups)
mkdir -p results/MAFFT
for i in $Lista_seq
do
   mafft --auto results/MAFFT/$i > results/MAFFT/"$i"_ali
done