#!/bin/bash
#SBATCH -J OV_cuffdiff
#SBATCH -p super
#SBATCH -N 1
#SBATCH -t 1-20:35:30
#SBATCH --output=OV_cuffdiff_%j.out
#SBATCH --error=OV_cuffdiff_%j.err
#SBATCH --mail-user=asna.amjad@utsouthwestern.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL


cd /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0

./compare-expression-cufflinks.sh -o 'OV3_All_Samples' -e 'DMSO2hr,DMSO4hr,BI2hr,BI4hr,BYK2hr,BYK4hr,BYKBI2hr,BYKBI4hr' -a 'OV3_DMSO_2_REP1_S1_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_DMSO_2_REP2_S17_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_DMSO_4_REP1_S5_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_DMSO_4_REP2_S21_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BI_2_REP1_S3_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BI_2_REP2_S19_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BI_4_REP1_S7_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BI_4_REP2_S23_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BYK_2_REP1_S2_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BYK_2_REP2_S18_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BYK_4_REP1_S6_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BYK_4_REP2_S22_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BYK_plus_BI_2_REP1_S4_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BYK_plus_BI_2_REP2_S20_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV3_BYK_plus_BI_4_REP1_S8_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV3_BYK_plus_BI_4_REP2_S24_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam' -r '/project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa' -g '/project/aamjad/data/RawFiles/call-transcripts-cufflinks.sh-1.0.0/merge_transcripts_OV3/merge-transcripts-cufflinks.sh-1.0.0/OV3_merged.gtf'

./compare-expression-cufflinks.sh -o 'OV4_All_Samples' -e 'DMSO2hr,DMSO4hr,BI2hr,BI4hr,BYK2hr,BYK4hr,BYKBI2hr,BYKBI4hr' -a 'OV4_DMSO_2_REP1_S1_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_DMSO_2_REP2_S17_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_DMSO_4_REP1_S5_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_DMSO_4_REP2_S21_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BI_2_REP1_S3_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BI_2_REP2_S19_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BI_4_REP1_S7_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BI_4_REP2_S23_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BYK_2_REP1_S2_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BYK_2_REP2_S18_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BYK_4_REP1_S6_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BYK_4_REP2_S22_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BYK_plus_BI_2_REP1_S4_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BYK_plus_BI_2_REP2_S20_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam OV4_BYK_plus_BI_4_REP1_S8_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam,OV4_BYK_plus_BI_4_REP2_S24_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam' -r '/project/shared/CommonGenomes_Indexes/fq/GRCh38/genome.fa' -g '/project/aamjad/data/RawFiles/call-transcripts-cufflinks.sh-1.0.0/merge_transcripts_OV3/merge-transcripts-cufflinks.sh-1.0.0/OV4_merged.gtf'


