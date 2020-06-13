#! /bin/bash

# Descomprimir archivos .gz
# gunzip -k samples/reads/*.gz


# Ejecutamos FastQC para todos los fastq.En n estará 2 * número de secuencias.

ls samples/reads/*.fastq > samples/names.txt
mkdir -p samples/fastqc
for line in $(cat samples/names.txt)
do 
	fastqc "$line" -o samples/fastqc	
done


# Ejecutamos MultiQC en la carpeta anterior

mkdir -p samples/multiqc
multiqc samples/fastqc -o samples/multiqc
