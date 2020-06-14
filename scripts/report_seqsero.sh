#! /bin/bash

Lista=$(ls -d results/SEQSERO/SeqSero_result*);
echo "Input files	Predicted serotype(s)" >  results/summary_SeqSero.txt
for i in $Lista 
do
	reg1=$( awk "NR==1" $i/Seqsero_result.txt | cut -f2)
	reg2=$( awk "NR==6" $i/Seqsero_result.txt | cut -f2)
	echo "$reg1 $reg2" >> results/summary_SeqSero.txt
done