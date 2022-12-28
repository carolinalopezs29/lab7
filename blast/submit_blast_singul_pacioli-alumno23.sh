#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno23/lab7-singularity/blast
#SBATCH -J lab7_3.2
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

#Cargamos el modulo de singularity
module load singularity

#Ejecutamos la imagen

gzip -d -k zebrafish.1.protein.faa.gz

singularity run blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

singularity run blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

module unload singularity
