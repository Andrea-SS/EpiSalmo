#! /bin/bash

# Script
lista_seq=$(ls results/PROKKA_ref)


for line in $lista_seq
do      
    cp results/PROKKA_ref/$line/*.ffn results/PROKKA/ffn2
done