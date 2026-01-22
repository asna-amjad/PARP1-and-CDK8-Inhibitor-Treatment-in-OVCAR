#!/bin/bash
#SBATCH -J OV_merge
#SBATCH -p super
#SBATCH -N 1
#SBATCH -t 1-20:35:30
#SBATCH --output=OV_merge_%j.out
#SBATCH --error=OV_merge_%j.err
#SBATCH --mail-user=asna.amjad@utsouthwestern.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL


cd /project/aamjad/data/RawFiles/call-transcripts-cufflinks.sh-1.0.0

## OV3 all samples

./merge-transcripts-cufflinks.sh -o merge_transcripts_OV3 -r /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a gencode.v25.annotation.gtf -g OV3_DMSO_2_REP1_S1_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_DMSO_2_REP2_S17_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_DMSO_4_REP1_S5_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_DMSO_4_REP2_S21_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BI_2_REP1_S3_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BI_2_REP2_S19_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BI_4_REP1_S7_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BI_4_REP2_S23_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_2_REP1_S2_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_2_REP2_S18_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_4_REP1_S6_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_4_REP2_S22_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_plus_BI_2_REP1_S4_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_plus_BI_2_REP2_S20_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_plus_BI_4_REP1_S8_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV3_BYK_plus_BI_4_REP2_S24_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf

## OV4 all samples

./merge-transcripts-cufflinks.sh -o merge_transcripts_OV4 -r /project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa -a gencode.v25.annotation.gtf -g OV4_DMSO_2_REP1_S9_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_DMSO_2_REP2_S25_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_DMSO_4_REP1_S13_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_DMSO_4_REP2_S29_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BI_2_REP1_S11_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BI_2_REP2_S27_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BI_4_REP1_S15_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BI_4_REP2_S31_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_2_REP1_S10_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_2_REP2_S26_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_4_REP1_S14_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_4_REP2_S30_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_plus_BI_2_REP1_S12_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_plus_BI_2_REP2_S28_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_plus_BI_4_REP1_S16_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf OV4_BYK_plus_BI_4_REP2_S32_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam.transcripts.gtf

