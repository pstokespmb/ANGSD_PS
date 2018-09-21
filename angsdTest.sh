#!/bin/bash 
#SBATCH -D /clusterfs/rosalind/users/peter_stokes/ANGSD/practice/angsd
#SBATCH -J ANGSD_Test
#SBATCH --partition=savio2_htc 
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=12
#SBATCH --time=24:00:00
#SBATCH --mem=128000
#SBATCH -o /global/home/users/peter_stokes/angst_test.out
#SBATCH -e /global/home/users/peter_stokes/angst_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.919-50-gc558037

angsd -GL 2 -doGlf 2 -b bam.filelist -doMajorMinor 1 -SNP_pval 1e-6 -doMaf 1