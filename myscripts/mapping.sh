#!/bin/bash
# This script will run the read mapping using bwa program

ref="/data/project_data/RS_ExomeSeq/ReferenceGenomes/Pabies1.0-genome_reduced.fa"

# Write a loop to map each individual within my population

# input = path to paired cleaned reads
# * = allows you to do 'input' for every indv. in your pop
# / = allows you to substitute one thing for another.
# So we are substituting the name in the forward read, for the reverse read.

for forward in ${input}*_R1.cl.pd.fq

do
  reverse=${forward/_R1.cl.pd.fq/_R2.cl.pd.fq}
  f=${forward/_R1.cl.pd.fq/}
  name=`basename ${f}` #the basename function removes all of the file pathway to create a name that results in BRB_01
  bwa mem -t 1 -M ${ref} ${forward} ${reverse} > ${output}/BWA/${name}.sam
done
