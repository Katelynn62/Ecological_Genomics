#!/bin/bash`

cd ~/Ecological_Genomics/myresults/
# creating a new directory to store my results
mkdir fastqc_trans

for file in /data/project_data/RS_RNASeq/fastq/JAY_02_C*.fastq.gz

do

# -o tells bash where to put the data...directory. Because we are in myresults, you only need to 
# name the file location 

fastqc ${file} -o fastqc_trans/


done

for file in /data/project_data/RS_RNASeq/fastq/JAY_02_D*.fastq.gz

do

fastqc ${file} -o fastqc_trans/
done



