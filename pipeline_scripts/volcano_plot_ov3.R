library(ggplot2)
library(ggrepel)
library(dplyr)

tr1 <- read.table("BI-2h/BI-2h_gene_symbols.txt", header = T, sep = "\t")
head(BI)

tr1$diffexpressed <- "NO"
# if log2Foldchange > 0.6 and pvalue < 0.05, set as "UP" 
tr1$diffexpressed[tr1$log2FoldChange > 0.58 & tr1$pvalue < 0.05] <- "UP"
# if log2Foldchange < -0.6 and pvalue < 0.05, set as "DOWN"
tr1$diffexpressed[tr1$log2FoldChange < -0.58 & tr1$pvalue < 0.05] <- "DOWN"

tr1$delabel <- NA
tr1$delabel[tr1$diffexpressed != "NO"] <- tr1$Symbol[tr1$diffexpressed != "NO"]

pdf("BI-2h/BI_2h_plot.pdf")
ggplot(data=tr1, aes(x=log2FoldChange, y=-log10(pvalue),col=diffexpressed,label=delabel)) +
  geom_point() + 
  theme_minimal() +
  geom_text_repel() +
  scale_color_manual(values=c("blue", "black", "red")) +
  geom_vline(xintercept=c(-0.58, 0.58), col="red") +
  geom_hline(yintercept=-log10(0.05), col="red")
dev.off()

