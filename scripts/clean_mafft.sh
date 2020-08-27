#! /bin/bash

Lista_seq=$(ls results/MAFFT/100/*)
mkdir -p results/MAFFT/100_clean

for i in $Lista_seq
do
    name=$(echo $i | cut -d"/" -f4)
    sed s/"_R_"//g $i > results/MAFFT/100_clean/"$name"_clean
done