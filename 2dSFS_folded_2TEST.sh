#!/bin/bash 
#SBATCH -D /oasis/scratch/comet/petersto/temp_project/ANGSD/2dSFS_folded
#SBATCH -J 2dSFS_LRW_folded_test
#SBATCH --partition=large-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=1400G
#SBATCH --time=48:00:00
#SBATCH -o /oasis/projects/nsf/ddp319/petersto/err_outs/2dSFS_LRW_folded_test.out
#SBATCH -e /oasis/projects/nsf/ddp319/petersto/err_outs/2dSFS_LRW_folded_test.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/oasis/projects/nsf/ddp319/petersto/programs/angsd/$PATH

realSFS ANGSD_bams_wild_foldedd.saf.idx  ANGSD_bams_landrace_foldedd.saf.idx -P 64 > 2dSFS_LRW_folded_test.sfs