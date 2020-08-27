Se parte de los resultados fastq de la secuenciacion en samples/reads.

1.- Se ejecuta fastQC-multiQC.sh en scripts

    1.1 Este comando realiza fastqc y multiqc sobre las muestras extraídas
    
2.- Se ejecuta prinseq.sh en scripts

    2.1 Este comando ejecuta el filtrado con printseq para eliminar lecturas no adecuadas
    
    2.2 Ajustar con los parámetros adecuados para el análisis
    
3.- Se ejecuta el index.sh que conlleva:

    3.1 KRAKEN -> ejecuta kraken.sh y kraken-report.sh para conocer el contenido de la muestra.    
    
    3.2 ARIBA -> 

    3.3 SPADES -> 

    3.4 QUAST ->

    3.5 PROKKA ->
  

4.- Aparte se utilizaron otras herramientas como el acceso a la [base de datos card](https://card.mcmaster.ca/home) y el [scrapping de datos](https://github.com/IvanPenyaHuguet/scrapping-card-resistance-database). Y el uso de [seq2mlst](https://github.com/lmc297/seq2mlst)