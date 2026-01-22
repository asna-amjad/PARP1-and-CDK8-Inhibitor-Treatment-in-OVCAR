#!/bin/bash
#SBATCH -J callTransc
#SBATCH -p super
#SBATCH -N 1
#SBATCH -t 1-20:35:30
#SBATCH --output=callTransc_%j.out
#SBATCH --error=callTransc_%j.err
#SBATCH --mail-user=asna.amjad@utsouthwestern.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

#export PATH=/home/aamjad/Scripts/RNA_Pipeline/rna-seq-pipeline:$PATH


##### Remove sequencerID to reduce file size from the bed files
cd /project/GCRB/Lee_Lab/shared/WilliamV/2025_02_26_N2K8_14450_0/RawFiles/align-star-se.sh-1.0.0

# OV3 DMSO
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_DMSO_2_REP1_S1_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam  -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_DMSO_2_REP2_S17_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_DMSO_4_REP1_S5_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam  -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_DMSO_4_REP2_S21_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV3 BI
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BI_2_REP1_S3_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BI_2_REP2_S19_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BI_4_REP1_S7_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BI_4_REP2_S23_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV3 BYK
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_2_REP1_S2_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_2_REP2_S18_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_4_REP1_S6_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_4_REP2_S22_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV3 BYK + BI
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_plus_BI_2_REP1_S4_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_plus_BI_2_REP2_S20_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_plus_BI_4_REP1_S8_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV3_BYK_plus_BI_4_REP2_S24_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf


# OV4 DMSO
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_DMSO_2_REP1_S9_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam  -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_DMSO_2_REP2_S25_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_DMSO_4_REP1_S13_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_DMSO_4_REP2_S29_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV4 BI
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BI_2_REP1_S11_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BI_2_REP2_S27_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BI_4_REP1_S15_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BI_4_REP2_S31_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV4 BYK
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_2_REP1_S10_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_2_REP2_S26_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_4_REP1_S14_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_4_REP2_S30_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf

# OV4 BYK + BI
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_plus_BI_2_REP1_S12_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_plus_BI_2_REP2_S28_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_plus_BI_4_REP1_S16_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
./call-transcripts-cufflinks.sh -f /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/OV4_BYK_plus_BI_4_REP2_S32_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam -g /project//shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0/gencode.v25.annotation.gtf
