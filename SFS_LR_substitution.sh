#!/bin/bash 
#SBATCH -D /oasis/scratch/comet/petersto/temp_project/ANGSD/2dSFS_substitution
#SBATCH -J SFS_LR_substitution
#SBATCH --partition=large-shared
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem=1400G
#SBATCH --time=48:00:00
#SBATCH -o /oasis/projects/nsf/ddp319/petersto/err_outs/SFS_LR_substitution.out
#SBATCH -e /oasis/projects/nsf/ddp319/petersto/err_outs/SFS_LR_substitution.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

export PATH=/oasis/projects/nsf/ddp319/petersto/programs/angsd:$PATH
export LD_LIBRARY_PATH=/share/apps/compute/lzma/lib:$LD_LIBRARY_PATH

/oasis/projects/nsf/ddp319/petersto/programs/angsd/misc/realSFS ANGSD_bams_landrace_substitution.saf.idx -P 64 > SFS_LR_substitution