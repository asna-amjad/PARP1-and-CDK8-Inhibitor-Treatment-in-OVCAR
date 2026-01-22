module load deeptools/3.5.0

cd /project/aamjad/data/RawFiles/align-star-se.sh-1.0.0
mkdir crosscorrelations
export PATH=/home/rna-seq-pipeline/:$PATH
function correlations {
multiBamSummary bins --bamfiles ${File1}.fastq.gz.Aligned.sortedByCoord.out.bam ${File2}.fastq.gz.Aligned.sortedByCoord.out.bam -o crosscorrelations/$NAME.npz
plotCorrelation -in crosscorrelations/$NAME.npz --corMethod pearson --skipZeros --plotTitle "Pearson Correlation Scatterplot" --whatToPlot heatmap --plotNumbers -o crosscorrelations/$NAME.heatmap.png
plotCorrelation -in crosscorrelations/$NAME.npz --corMethod pearson --skipZeros --plotTitle "Pearson Correlation HeatMapplot" --whatToPlot scatterplot -o crosscorrelations/$NAME.scatterplot.png --outFileCorMatrix crosscorrelations/$NAME_PearsonCorr.tab
}


##############################################################
### Samples
##############################################################

File1="OV3_BI_2_REP1_S3_R1_001"
File2="OV3_BI_2_REP2_S19_R1_001"
NAME="OV3_BI_2"
correlations

File1="OV3_BI_4_REP1_S7_R1_001"
File2="OV3_BI_4_REP2_S23_R1_001"
NAME="OV3_BI_4"
correlations


File1="OV3_BYK_2_REP1_S2_R1_001"
File2="OV3_BYK_2_REP2_S18_R1_001"
NAME="OV3_BYK_2"
correlations


File1="OV3_BYK_4_REP1_S6_R1_001"
File2="OV3_BYK_4_REP2_S22_R1_001"
NAME="OV3_BYK_4"
correlations


File1="OV3_BYK_plus_BI_2_REP1_S4_R1_001"
File2="OV3_BYK_plus_BI_2_REP2_S20_R1_001"
NAME="OV3_BYK_plus_BI_2"
correlations


File1="OV3_BYK_plus_BI_4_REP1_S8_R1_001"
File2="OV3_BYK_plus_BI_4_REP2_S24_R1_001"
NAME="OV3_BYK_plus_BI_4"
correlations



File1="OV3_DMSO_2_REP1_S1_R1_001"
File2="OV3_DMSO_2_REP2_S17_R1_001"
NAME="OV3_DMSO_2"
correlations

File1="OV3_DMSO_4_REP1_S5_R1_001"
File2="OV3_DMSO_4_REP2_S21_R1_001"
NAME="OV3_DMSO_4"
correlations




File1="OV4_BI_2_REP1_S11_R1_001"
File2="OV4_BI_2_REP2_S27_R1_001"
NAME="OV4_BI_2"
correlations


File1="OV4_BI_4_REP1_S15_R1_001"
File2="OV4_BI_4_REP2_S31_R1_001"
NAME="OV4_BI_4"
correlations




File1="OV4_BYK_2_REP1_S10_R1_001"
File2="OV4_BYK_2_REP2_S26_R1_001"
NAME="OV4_BYK_2"
correlations



File1="OV4_BYK_4_REP1_S14_R1_001"
File2="OV4_BYK_4_REP2_S30_R1_001"
NAME="OV4_BYK_4"
correlations

