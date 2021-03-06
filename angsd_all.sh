#!/bin/bash
#SBATCH --job-name=all_bams
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=122GB
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=400:00:00
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/all_bams/
#SBATCH -o /global/home/users/peter_stokes/all_bams.out
#SBATCH -e /global/home/users/peter_stokes/all_bams.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.919-50-gc558037

outfile=angsd_all
angsd_dir="/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/all_bams/outs/"

angsd -bam /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/all_bams/outs/ANGSD_bams_all_bams.list \
-GL 2 -doGlf 2 \
-out /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/all_bams/outs/${outfile} \
-nThreads 12 -doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -doGeno 32 -doPost 1 \
-minMapQ 30 -minQ 20 -minInd 1 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -geno_minDepth 1 -geno_maxDepth 100 -postCutoff 0.6 \
-doIBS 2 -doCov 1 -doPlink 2 -doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 -minMaf 0.01


