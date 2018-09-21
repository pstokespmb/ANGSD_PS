#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/2dsfs_consensus
#SBATCH -J doSaf_Landrace_pop_consensus
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/doSaf_Landrace_pop_consensus.out
#SBATCH -e /global/home/users/peter_stokes/doSaf_Landrace_pop_consensus.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.21

angsd -bam ANGSD_bams_landrace.list -doSaf 1 -anc H_argophyllus_consensus_doFasta.fa -GL 2 -P 20 -out ANGSD_bams_landrace_consensus -minMapQ 1 -minQ 20
