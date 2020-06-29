#! /bin/bash
mkdir -p results/PROTEINORTHO_90
cd results/PROTEINORTHO_90

mkdir -p orthologs-groups
cd orthologs-groups
proteinortho_grab_proteins.pl -source -tofiles ../../PROTEINORTHO/*90.tsv ../../PROKKA/ffn/*.ffn

cd ../../..