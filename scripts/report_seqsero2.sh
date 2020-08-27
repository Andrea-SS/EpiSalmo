#! /bin/bash

Lista=$(ls -d results/SEQSERO2/*);
echo "Sample	Predicted serotype(s)	Note" >  results/summary_SeqSero2.txt
for i in $Lista 
do
	name=$(echo $i | cut -d"/" -f3 | cut -d"." -f1)	
	reg=$( awk "NR==8" $i/SeqSero_result.txt | cut -d":" -f2)
	note=$( awk "NR==9" $i/SeqSero_result.txt | cut -f2)
	echo "$name	$reg	$note" >> results/summary_SeqSero2.txt
done