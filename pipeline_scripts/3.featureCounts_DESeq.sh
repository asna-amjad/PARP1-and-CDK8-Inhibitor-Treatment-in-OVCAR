module load subread/1.6.3
cd /project/aamajd/data/RawFiles/align-star-se.sh-1.0.0



########################################################################
######## filenames
FILE1='OV3_BI_2_REP1_S3_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE2='OV3_BI_2_REP2_S19_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE3='OV3_BI_4_REP1_S7_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE4='OV3_BI_4_REP2_S23_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE5='OV3_BYK_2_REP1_S2_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE6='OV3_BYK_2_REP2_S18_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE7='OV3_BYK_4_REP1_S6_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE8='OV3_BYK_4_REP2_S22_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE9='OV3_BYK_plus_BI_2_REP1_S4_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE10='OV3_BYK_plus_BI_2_REP2_S20_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE11='OV3_BYK_plus_BI_4_REP1_S8_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE12='OV3_BYK_plus_BI_4_REP2_S24_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE13='OV3_DMSO_2_REP1_S1_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE14='OV3_DMSO_2_REP2_S17_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE15='OV3_DMSO_4_REP1_S5_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE16='OV3_DMSO_4_REP2_S21_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE17='OV4_BI_2_REP1_S11_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE18='OV4_BI_2_REP2_S27_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE19='OV4_BI_4_REP1_S15_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE20='OV4_BI_4_REP2_S31_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE21='OV4_BYK_2_REP1_S10_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE22='OV4_BYK_2_REP2_S26_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE23='OV4_BYK_4_REP1_S14_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE24='OV4_BYK_4_REP2_S30_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE25='OV4_BYK_plus_BI_2_REP1_S12_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE26='OV4_BYK_plus_BI_2_REP2_S28_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE27='OV4_BYK_plus_BI_4_REP1_S16_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE28='OV4_BYK_plus_BI_4_REP2_S32_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE29='OV4_DMSO_2_REP1_S9_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE30='OV4_DMSO_2_REP2_S25_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE31='OV4_DMSO_4_REP1_S13_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'
FILE32='OV4_DMSO_4_REP2_S29_R1_001.fastq.gz.Aligned.sortedByCoord.out.sorted.bam'



########################################################################
featureCounts -a gencode.v25.annotation.gtf -t exon -T 16 -o Deseq-outs/counts_Rseq.txt -s 2 -M --fraction $FILE1 $FILE2 $FILE3 $FILE4 $FILE5 $FILE6 $FILE7 $FILE8 $FILE9 $FILE10 $FILE11 $FILE12 $FILE13 $FILE14 $FILE15 $FILE16 $FILE17 $FILE18 $FILE19 $FILE20 $FILE21 $FILE22 $FILE23 $FILE24 $FILE25 $FILE26 $FILE27 $FILE28 $FILE29 $FILE30 $FILE31 $FILE32
