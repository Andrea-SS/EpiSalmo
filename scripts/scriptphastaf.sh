#! /bin/bash

$phastaf_path=./phastaf/bin/phastaf
listaseq=$(ls ./results/PROKKA)
mkdir -p results/PHASTAF

for linea in $listaseq
do
	.$phastaf_path --outdir PHASTAF/$linea results/PROKKA/$linea
done

