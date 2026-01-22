#!/bin/bash
#SBATCH --job-name=fastqc                              # job name
#SBATCH --partition=super                                 # select partion from 128GB, 256GB, 384GB, GPU and super
#SBATCH --nodes=1                                         # number of nodes requested by user
#SBATCH --time=0-48:00:00                                 # run time, format: D-H:M:S (max wallclock time)
#SBATCH --output=fastqc.%j.out                         # standard output file name
#SBATCH --error=fastqc.%j.time                         # standard error output file name
#SBATCH --mail-user=asna.amjad@utsouthwestern.edu           # specify an email address
#SBATCH --mail-type=ALL                                   # send email when job status change (start, end, abortion and etc.)

module load fastqc
cd /project/GCRB/aamjad/data/RawFiles
fastqc *.fastq.gz

cd /project/GCRB/aamjad/data/RawFiles
fastqs='OV3_BI_2_REP1_S3 OV3_BI_2_REP2_S19 OV3_BI_4_REP1_S7 OV3_BI_4_REP2_S23 OV3_BYK_2_REP1_S2 OV3_BYK_2_REP2_S18 OV3_BYK_4_REP1_S6 OV3_BYK_4_REP2_S22 OV3_BYK_plus_BI_2_REP1_S4 OV3_BYK_plus_BI_2_REP2_S20 OV3_BYK_plus_BI_4_REP1_S8 OV3_BYK_plus_BI_4_REP2_S24 OV3_DMSO_2_REP1_S1 OV3_DMSO_2_REP2_S17 OV3_DMSO_4_REP1_S5 OV3_DMSO_4_REP2_S21 OV4_BI_2_REP1_S11 OV4_BI_2_REP2_S27 OV4_BI_4_REP1_S15 OV4_BI_4_REP2_S31 OV4_BYK_2_REP1_S10 OV4_BYK_2_REP2_S26 OV4_BYK_4_REP1_S14 OV4_BYK_4_REP2_S30 OV4_BYK_plus_BI_2_REP1_S12 OV4_BYK_plus_BI_2_REP2_S28 OV4_BYK_plus_BI_4_REP1_S16 OV4_BYK_plus_BI_4_REP2_S32 OV4_DMSO_2_REP1_S9 OV4_DMSO_2_REP2_S25 OV4_DMSO_4_REP1_S13 OV4_DMSO_4_REP2_S29'
export PATH=/project/GCRB/Scripts:$PATH
for fastq in $fastqs
do
echo $fastq
echo ${fastq}_R1_001.fastq.gz
pwd
#HG38
/home/rna-seq-pipeline/align-star-se.sh -f ${fastq}_R1_001.fastq.gz -i '/project/aamjad/Star_Indexes_2.7.2b/GRCh38_refseq/STAR_Index' -a '/project/GCRB/Star_Indexes_2.7.2b/GRCh38/gencode.v25.annotation.gtf' -o '/project/aamjad/shared/data/RawFiles'
done

