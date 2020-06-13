#! /bin/bash

# Downloads

#ariba pubmlstspecies
#ariba pubmlstget "Salmonella enterica" get_mlst

# Config
database=$HOME/out.card.prepareref # Base de datos

# Script
mkdir -p results/ARIBA/{arg,mlst}
n_seq=$(wc -l samples/good.txt | cut -d' ' -f1)
i=1
until [   $i -gt $n_seq  ];
do
    first=$(sed -n "$i"p samples/good.txt)    
    i=$(($i+1))
    second=$(sed -n "$i"p samples/good.txt)    
    name=$(sed -n "$i"p samples/good.txt | cut -d'/' -f3 | sed "s/_good_out_R2*//g" ) 
    echo $name
    ariba run $database $first $second results/ARIBA/arg/"$name"_ARG
    echo $name
    ariba run $HOME/get_mlst/ref_db $first $second results/ARIBA/mlst/"$name"_MLST
    i=$(($i+1))
done;