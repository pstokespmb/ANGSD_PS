#!/bin/bash
#SBATCH --job-name=angsd_wild
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_wild/
#SBATCH -o /global/home/users/peter_stokes/angsd_wild.out
#SBATCH -e /global/home/users/peter_stokes/angsd_wild.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load angsd/0.919-50-gc558037

outfile=angsd_wild
angsd_dir="/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_wild/outs"

angsd -bam /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_wild/outs/ANGSD_bams_wild.txt \
-GL 2 -doGlf 2 \
-out /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/ANGSD_bams_wild/outs/${outfile} \
-nThreads 12 -doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -doGeno 5 -doPost 1 \
-minMapQ 30 -minQ 20 -minInd 1 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -geno_minDepth 1 -geno_maxDepth 100 -postCutoff 0.6 \
-doIBS 2 -doCov 1 -doPlink 2 -doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 -minMaf 0.01