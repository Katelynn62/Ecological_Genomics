#!/bin/bash

#Set repo directory
myrepo="/users/k/w/kwarner/Ecological_Genomics"

mypop="BRB"

output="/data/project_data/RS_ExomeSeq/mapping"

#Create a header for our csv(?) spreadsheet

echo "Num.reads R1 R2 Paired MateMapped Singletons MateMappedDiffChr" > ${myrepo}/myresults/${mypop}.flagstats.txt

#Write a loop to do flagstats for each of our files.

for file in ${output}/BWA/${mypop}*sorted.rmdup.bam
  
  do 
    f=${file/.sorted.rmdup.bam/}
    name=`basename ${f}`
    echo ${name} >> ${myrepo}/myresults/${mypop}.names.txt
    samtools flagstat ${file} | awk 'NR>=6&&NR<=12 {print $1}' | column -x
  done >> ${myrepo}/myresults/${mypop}.flagstats.txt
  

