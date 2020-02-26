#!/bin/bash`

cd ~/Ecological_Genomics/myresults/
# creating a new directory to store my results
mkdir fastqc_trans_clean

for file in /data/project_data/RS_RNASeq/fastq/cleanreads/JAY_02_C*.cl.fq

do

# -o tells bash where to put the data...directory. Because we are in myresults, you only need to 
# name the file location 

fastqc ${file} -o fastqc_trans_clean/


done

for file in /data/project_data/RS_RNASeq/fastq/cleanreads/JAY_02_D*.cl.fq

do

fastqc ${file} -o fastqc_trans_clean/
done



