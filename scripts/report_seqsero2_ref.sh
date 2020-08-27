#! /bin/bash

Lista=$(ls -d results/SEQSERO_ref/*);
echo "Sample	Predicted serotype(s)" >  results/summary_SeqSero_ref.txt
for i in $Lista 
do
	name=$(echo $i | cut -d"/" -f3 | cut -d"." -f1)	
	reg=$( awk "NR==8" $i/SeqSero_result.txt | cut -d":" -f2)
	echo "$name $reg" >> results/summary_SeqSero_ref.txt
done