#!/bin/bash
#SBATCH --job-name=angsd_Hargophyllus_savionormal
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=400:00:00
#SBATCH --mem=64000
#SBATCH -D /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs
#SBATCH -o /global/home/users/peter_stokes/angsd_Hargophyllus_savionormal.out
#SBATCH -e /global/home/users/peter_stokes/angsd_Hargophyllus_savionormal.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All


module load angsd/0.919-50-gc558037

outfile=angsd_Hargophyllus_savionormal
angsd_dir="/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/"


angsd -bam /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/Bam_List_argophyllus.txt \
-GL 2 -doGlf 2 \
-out /global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/${outfile} \
-nThreads 12 -doMajorMinor 1 -SNP_pval 1e-6 \
-doMaf 1 -doGeno 32 -doPost 1 \
-minMapQ 30 -minQ 20 -minInd 1 -doDepth 1 \
-doCounts 1 -dumpCounts 2 -geno_minDepth 1 -geno_maxDepth 100 -postCutoff 0.6 \
-doIBS 2 -doCov 1 -doPlink 2 -doVcf 1 \
-dosmartcounts 1 \
-doHaploCall 2 -minMaf 0.01


   -> The misc folder now contains a program to convert to plink format 'misc/haploToPlink angsdput.haplo.gz outputname'
        -> Output filenames:
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.arg"
                ->"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.counts.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.beagle.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.mafs.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.geno.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.tfam"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.tped"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.counts.idx"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.counts.bin"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.vcf.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.haplo.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.ibs.gz"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.covMat"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.depthSample"
                ->"/global/scratch/peter_stokes/ANGSD/non-practice/angsd/bams/H_argophyllus/outs/angsd_Hargophyllus_savionormal.depthGlobal"