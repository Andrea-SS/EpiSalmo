#! /bin/bash

# Script
mkdir -p results/SPADES
n_seq=$(wc -l samples/good.txt | cut -d' ' -f1)
i=1
until [   $i -gt $n_seq  ];
do
    first=$(sed -n "$i"p samples/good.txt)    
    i=$(($i+1))
    second=$(sed -n "$i"p samples/good.txt)    
    name=$(sed -n "$i"p samples/good.txt | cut -d'/' -f3 | sed "s/_good_out_R2*//g" ) 
    echo $name
    spades.py -1 $first -2 $second -o results/SPADES/"$name"
    i=$(($i+1))
done;