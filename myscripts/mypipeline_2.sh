#!/bin/bash # What every script in bash begins with. 

# path to my  repo:

myrepo="/users/k/w/kwarner/Ecological_Genomics/myscripts"

# Name my population

mypop="BRB"

# Directory to our cleaned and paired reads

input="/data/project_data/RS_ExomeSeq/fastq/edge_fastq/pairedcleanreads/${mypop}"

# Directory to our cleaned and paired reads

output="/data/project_data/RS_ExomeSeq/mapping"

# Run mapping.sh; ./ is looking for stuff in the same directory you are working in.
source ./mapping.sh

#Run the post-processing steps

source ./process_bam_2.sh