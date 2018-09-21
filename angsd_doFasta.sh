#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus
#SBATCH -J doFasta_Hargophyllus
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/doFasta_Hargophyllus.out
#SBATCH -e /global/home/users/peter_stokes/doFasta_Hargophyllus.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.21

angsd -bam /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/angsd_H_argophyllus_bams.txt \
-doCounts 1 -doFasta 2