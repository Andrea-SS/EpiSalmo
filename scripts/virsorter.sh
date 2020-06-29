#! /bin/bash

#Config
ruta_virsorter=/home/andrea/VirSorter # Ruta para ejecutar virsorter
ruta_bd=/home/andrea
lista_seq=$(ls results/SPADES)
core=4
mkdir -p results/VIRSORTER

for linea in $lista_seq
do
    name=$(echo $linea | cut -d"_" -f2-)
    echo $name
    $ruta_virsorter/wrapper_phage_contigs_sorter_iPlant.pl -f results/SPADES/$linea/contigs.fasta --db 1 --wdir results/VIRSORTER/SPADES_"$name" --ncpu $core --data-dir $ruta_bd
done