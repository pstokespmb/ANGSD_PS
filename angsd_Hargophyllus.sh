#!/bin/bash
#SBATCH --job-name=angsd_Hargophyllus
#SBATCH --account=co_rosalind
#SBATCH --partition=savio2_htc
#SBATCH --qos=rosalind_htc2_normal
#SBATCH --cpus-per-task=12
#SBATCH --mem=122GB
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=400:00:00
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/
#SBATCH -o /global/home/users/peter_stokes/angsd_Hargophyllus.out
#SBATCH -e /global/home/users/peter_stokes/angsd_Hargophyllus.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

outfile=angsd_Hargophyllus
angsd_dir="/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/"

### Parameter choices:
# Unpublished wilds are included. Bad Hopi (repeat) and annHA89 removed
# Might not use VCF. Use Plink for LD correction. Haplo for ML tree
# Looks like PCAngsd needs GL type 2, so might have to rerun. 


angsd -bam   \
-GL 2 -doGlf 2 \
-out /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/ \
-nThreads 12 -doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -doGeno 32 -doPost 1 \
-minMapQ 30 -minQ 20 -minInd 1 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -geno_minDepth 1 -geno_maxDepth 100 -postCutoff 0.6 \
-doIBS 2 -doCov 1 -doPlink 2 -doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 -minMaf 0.01