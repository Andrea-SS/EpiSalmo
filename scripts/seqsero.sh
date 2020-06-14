#! /bin/bash

# Config 
path_seqsero=/home/andrea/Descargas/SeqSero-master

# Script

mkdir -p results/SEQSERO
n_seq=$(wc -l samples/good.txt | cut -d' ' -f1)
cd results/SEQSERO
i=1
until [   $i -gt $n_seq  ];
do
    first=$(sed -n "$i"p ../../samples/good.txt)    
    i=$(($i+1))
    second=$(sed -n "$i"p ../../samples/good.txt)    
    name=$(sed -n "$i"p ../../samples/good.txt | cut -d'/' -f3 | sed "s/_good_out_R2*//g" ) 
    echo $name    
    "$path_seqsero"/SeqSero.py -m 2 -i ../../$first ../../$second    
    i=$(($i+1))
done;
cd ../..


