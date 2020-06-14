# Obtención de las secuencias de los ortólogos

cd results/PROTEINORTHO

mkdir -p orthologs-groups
cd orthologs-groups
proteinortho_grab_proteins.pl -source -tofiles ../*.tsv ../../PROKKA/ffn/*.ffn

cd ../../..