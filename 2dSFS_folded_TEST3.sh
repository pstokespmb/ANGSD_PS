#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/2dsfs_folded
#SBATCH -J 2dSFS_LRW_folded_test3
#SBATCH --partition=savio
#SBATCH --account=fc_blackmanlab 
#SBATCH --qos=savio_normal
#SBATCH --nodes=12
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=160
#SBATCH --time=48:00:00
#SBATCH --mem=768000
#SBATCH -o /global/home/users/peter_stokestest/2dSFS_LRW_folded_test3.out
#SBATCH -e /global/home/users/peter_stokestest/2dSFS_LRW_folded_test3.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.21

./realSFS ANGSD_bams_wild_foldedd.saf.idx  ANGSD_bams_landrace_foldedd.saf.idx -P 64 > 2dSFS_LRW_folded_test3.sfs