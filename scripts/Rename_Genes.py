
import re
import os

#Crear directorio de destino
for filename in os.listdir("/home/andrea/Escritorio/Codigo_andrea_TFM/results/TRIMAL/Typhimurium3"):    
    file_i = open("results/TRIMAL/Typhimurium3/"+filename, "r")
    file_o = open("results/TRIMAL/Typhimurium3_nombre/"+filename, "a")
    for line in file_i:
            if ">" in line:
                words = line.split()                    
                new_name=">"+words[-1]+"\n"
                file_o.write(new_name)
            else:
                file_o.write(str(line))
    file_i.close()
    file_o.close()
