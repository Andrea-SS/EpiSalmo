#! /bin/bash


lista=$(ls results/QUAST)
echo "Assembly # contigs (>= 0 bp)	# contigs (>= 1000 bp)	# contigs (>= 5000 bp)	# contigs (>= 10000 bp)	# contigs (>= 25000 bp)	# contigs (>= 50000 bp)	Total length (>= 0 bp)	Total length (>= 1000 bp)	Total length (>= 5000 bp)	Total length (>= 10000 bp)	Total length (>= 25000 bp)	Total length (>= 50000 bp)	# contigs	Largest contig	Total length	GC (%)	N50	N75	L50	L75	# N's per 100 kbp" > results/summary_quast.txt
for i in $lista
do
	linea=$(awk "NR==2" results/QUAST/$i/transposed_report.tsv | sed "s/contigs//g")
	echo "$i	$linea" >> results/summary_quast.txt
done