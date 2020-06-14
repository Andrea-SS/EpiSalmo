#! /bin/bash

lista_seq=$(ls results/SISTR)
echo "cgmlst_ST,cgmlst_distance,cgmlst_found_loci,cgmlst_genome_match,cgmlst_matching_alleles,cgmlst_subspecies,fasta_filepath,genome,h1,h2,o_antigen,qc_messages,qc_status,serogroup,serovar,serovar_antigen,serovar_cgmlst" > results/summary_sistr.txt

for line in $lista_seq
do      
	l=$( awk "NR==2" results/SISTR/$line/"$line"_sistr-output.csv)
	echo "$line    $l" >> results/summary_sistr.txt
done