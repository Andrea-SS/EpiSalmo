#! /bin/bash
#KRAKEN


# Config
database=/home/andrea/Descargas/minikraken_20171019_4GB/minikraken_20171013_4GB # Ruta de la base de datos
ruta_kraken=/home/andrea/Descargas/kraken # Ruta para ejecutar kraken

# Script
lista_seq=$(ls results/KRAKEN/*.fastq_kraken)

for line in $lista_seq;
do
    echo $line
	"$ruta_kraken"/kraken-report --db $database $line > "$line"_report
done;
