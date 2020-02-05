#!/bin/bash`

cd ~/Ecological_Genomics/myresults/
# creating a new directory to store my results
mkdir fastqc

for file in /data/project_data/RS_ExomeSeq/fastq/edge_fastq/pairedcleanreads/BRB*.cl.pd.fq

do

# -o tells bash where to put the data...directory. Because we are in myresults, you only need to 
# name the file location 

fastqc ${file} -o fastqc/

done



