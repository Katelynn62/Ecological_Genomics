#!/bin/bash
#index = /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_HC27_index
cd /data/project_data/RS_RNASeq/fastq/cleanreads

for file in JAY_02_C*.cl.fq

do

  salmon quant -i /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_cds_index -l A -r ${file} --validateMappings -p 1 --seqBias  -o /data/project_data/RS_RNASeq/salmon/allmapping/${file}
  
  
done

for file in JAY_02_D*.cl.fq
do 
  salmon quant -i /data/project_data/RS_RNASeq/ReferenceTranscriptome/Pabies_cds_index -l A -r ${file}  --validateMappings -p 1 --seqBias  -o /data/project_data/RS_RNASeq/salmon/allmapping/${file}

done
