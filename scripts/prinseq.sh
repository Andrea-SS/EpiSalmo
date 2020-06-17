#! /bin/bash

# Parámetros modificables

min_len="120" # Filtrado por longitud mínima
qual_mean="25" # Calidad media
threads="4" # Número de núcleos disponibles

# Código script

i=1
n=$(wc -l samples/names.txt | cut -d' ' -f1)
until [ $i -gt $n ]
do
    first=$(sed -n "$i"p samples/names.txt)
    i=$(($i+1))
    second=$(sed -n "$i"p samples/names.txt)
    name=$(sed -n "$i"p samples/names.txt | cut -d'/' -f3 | sed "s/_R2//g" )
    echo $name
    /usr/local/bin/prinseq++ -fastq "$first" -fastq2 "$second" -min_len $min_len -trim_qual_window $qual_mean -threads $threads -out_name samples/prinseq/"$name"
    i=$(($i+1))
done
mkdir -p samples/prinseq
