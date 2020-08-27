import csv
import os
import pandas as pd


taxonomy = []
taxonomy.append("Sample")
path = "results/outphigaro"
output = "results/phigaro_summary.tsv" 
final = []
for filename in os.listdir(path):   
    input_file = pd.read_csv(path+"/"+filename, sep='\t')
    taxonomy_column = input_file.taxonomy   
    virus_in_sample = []
    virus_in_sample.append(filename.replace(".fna.tsv", ""))    
    virus_in_sample += [0] * (len(taxonomy)-1)      
    for virus in taxonomy_column:        
        if virus not in taxonomy:
            taxonomy.append(virus)            
            index = taxonomy.index(virus)
            virus_in_sample.append(1)
            print (virus)                    
        else:
            index = taxonomy.index(virus)            
            virus_in_sample[index] += 1
    if len(final) == 0:
        final.append(taxonomy)
    else:
        final [0] = taxonomy
    final.append(virus_in_sample)    

with open(output, 'w', newline="") as tsv_file_out:
    writer = csv.writer(tsv_file_out, delimiter='\t')
    for row in final:
        writer.writerow(row)

