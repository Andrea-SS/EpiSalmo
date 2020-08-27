#! /bin/bash


lista=$(ls results/AMAS/summary_100_new/*)
echo "Alignment_name	No_of_taxa	Alignment_length	Total_matrix_cells	Undetermined_characters	Missing_percent	No_variable_sites	Proportion_variable_sites	Parsimony_informative_sites	Proportion_parsimony_informative	AT_content	GC_content	A	C	G	T	K	M	R	Y	S	W	B	V	H	D	X	N	O	-	?
" > results/AMAS/summary_amas_100_new.txt
for i in $lista
do
	linea=$(awk "NR==2" $i)
	echo "$linea" >> results/AMAS/summary_amas_100_new.txt
done
