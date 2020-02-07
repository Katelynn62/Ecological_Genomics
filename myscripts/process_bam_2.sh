#!/bin/bash 

# This is where our output .sam files are going to get converted into 
# binary format (bam)
# Then we are going to sort the bam files, remove the PCR duplicates,
# and index them

#First, let's convert sam to bam, then we will sort.
# -S means .sam file
# -o = outfile
for f in ${output}/BWA/${mypop}*.sam # this is going to work on any pop with .sam

do 
  out=${f/.sam/}
  sambamba-0.7.1-linux-static view -S --format=bam ${f} -o ${out}.bam
  samtools sort ${out}.bam -o ${output}.sorted.bam
done

#Now lets remove PCR duplicates from our bam files
#markdup removes PCR duplicates

for file in ${output}/BWA/${mypop}*.sorted.bam

do 
  f=${file/.sorted.bam/}
  sambamba-0.7.1-linux-static markdup -r -t 1 ${f}.sorted.rmdup.bam
done

# Now to finish, we will index our files
# will create a coordinate system, essentially, in order to quick look up files

for file in ${output}/BWA/${mypop}*.sorted.rmdup.bam

do
  samtools index ${file}
done




  
  

