#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno35/lab7_singularity/lab7_singularity/blast
#SBATCH -J alumno_35_advance
#SBATCH --cpus-per-task=1
#SBATCH --output=salida_lab7_singularity.out
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es


### CARGAMOS LOS MODULOS ###
module load singularity/3.8.0

#BLASTP
singularity exec blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -subject zebrafish.1.protein.faa -out results-blast.txt


#BLASTP extra -> cambiando el formato del output

singularity exec blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -subject zebrafish.1.protein.faa -outfmt 7 -out results-blast_formato_alternativo.txt
