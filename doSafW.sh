#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/2dSFS
#SBATCH -J doSaf_Wild_pop
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/doSaf_Wild_pop.out
#SBATCH -e /global/home/users/peter_stokes/doSaf_Wild_pop.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.21

angsd -bam ANGSD_bams_wild.list -doSaf 1 -anc HanXRQr1.0-20151230_ch01_to_17.fasta -GL 2 -P 20 -fold 1 -out ANGSD_bams_wild_foldedd -minMapQ 1 -minQ 20
