Se parte de los resultados fastq de la secuenciacion en samples/reads.

1.- Se ejecuta fastQC-multiQC.sh en scripts

    1.1 Este comando ejecuta fastqc y multiqc sobre las muestras extraídas.
    
2.- Se ejecuta prinseq.sh en scripts

    2.1 Este comando ejecuta el filtrado con printseq para eliminar lecturas inadecuadas.
    
    2.2 Ajustar con los parámetros adecuados para el análisis
    
3.- Se ejecuta el index.sh que contiene los siguientes programas (y los resúmenes del resultado de algunos de ellos):

    3.1 KRAKEN -> Permite conocer el contenido de la muestra.    
    
    3.2 ARIBA -> Obtiene los genes de resistencia a antibióticos.

    3.3 SPADES -> Ensambla de novo las lecturas.

    3.4 QUAST -> Ofrece las estadísticas básicas de la calidad del ensamblado.

    3.5 PROKKA -> Anota el genoma a partir de los genomas depositados en RefSeq.
    
    3.6 SEQSERO -> Serotipado in silico.
    
    3.7 SISTR -> Serotipado in silico.
    
    3.8 VIRSORTER -> Detección de fagos y profagos.
    
    3.9 PROTEINORTHO -> Obtiene los genes ortólogos entre las muestras.
   
 4.- Una vez obtenidos y seleccionados los genes ortólogos deseados, se ejecuta proteinortho_grab_proteins.sh para extraerlos, amas_concat.sh para concatenarlos y mafft.sh para alinearlos.
    
 5.- Ejecutando clean_mafft.sh obtenemos los alineamientos con los nombres correctos.
 
 6. Finalmente, se ejecuta amas_summary.sh para obtener el resumen estadístico de los alineamientos de los genes ortólogos. En caso de detectar regiones iniciales o finales no alineadas se puede emplear trimal.sh para recortarlas.

También se utilizaron otras herramientas como el acceso a la [base de datos card](https://card.mcmaster.ca/home) y el [scrapping de datos](https://github.com/IvanPenyaHuguet/scrapping-card-resistance-database). 
