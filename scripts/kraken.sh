#! /bin/bash
#KRAKEN

#Config
threads="4" # Número de hilos para el proceso
ruta_kraken=/home/andrea/Descargas/kraken # Ruta para ejecutar kraken
database=/home/andrea/Descargas/minikraken_20171019_4GB/minikraken_20171013_4GB # Ruta de la base de datos

# Script
n_seq=$(wc -l samples/names.txt | cut -d' ' -f1)
ls samples/prinseq/*good_out*.fastq > samples/good.txt
mkdir -p results/KRAKEN/{unclassified,classified}

i=1
until [   $i -gt $n_seq  ]; 
do

    first=$(sed -n "$i"p samples/good.txt)    
    i=$(($i+1))
    second=$(sed -n "$i"p samples/good.txt)    
    name=$(sed -n "$i"p samples/good.txt | cut -d'/' -f3 | sed "s/_good_out_R2*//g" ) #| cut -d'.' -f1 | cut -d'_' -f1,2,3 | 
    echo $name
    $ruta_kraken/kraken --threads $threads --quick --db $database $first $second --paired --unclassified-out results/KRAKEN/unclassified/"$name"_unclassified --classified-out results/KRAKEN/classified/"$name"_classified > results/KRAKEN/"$name"_kraken	
	$ruta_kraken/kraken-translate --db $database results/KRAKEN/"$name"_kraken > results/KRAKEN/"$name"_sequences_labels
    i=$(($i+1))	

done