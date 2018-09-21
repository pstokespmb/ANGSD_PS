#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/2dsfs_substitution
#SBATCH -J doSafLR_substitution
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/doSafLR_substitution.out
#SBATCH -e /global/home/users/peter_stokes/doSafLR_substitution.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.21

angsd -bam ANGSD_bams_landrace.list -doSaf 1 -anc 2dSFS_SUBSTITUTIONS.fa -GL 2 -P 20 -out ANGSD_bams_landrace_substitution -minMapQ 1 -minQ 20