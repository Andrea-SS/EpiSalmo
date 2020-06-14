#! /bin/bash

# Config
threads=4 # Número de hilos


# Agruamos los ficheros .ffn resultantes de PROKKA en una carpeta
lista=$(ls results/PROKKA)
mkdir -p results/PROKKA/ffn

for i in  $lista
do
    cp results/PROKKA/$i/*.ffn results/PROKKA/ffn
done

mkdir -p results/PROTEINORTHO
cd results/PROTEINORTHO

# Búsqueda de genes ortólogos
proteinortho -cpus=$threads -p=blastn ../PROKKA/ffn/*
