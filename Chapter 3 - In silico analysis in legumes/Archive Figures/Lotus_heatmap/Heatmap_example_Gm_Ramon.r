#CODE FOR R – Heatmaps
#Glycine max
library("pheatmap")
#setwd("C:/Users/ramon/OneDrive - Vrije Universiteit Brussel/PhD/ARTIKEL RFO/Artikel expressie atlas/TPM/R")
gw_heatmap <- read.csv(file = "Gm.csv", header = TRUE, row.names = 1)
hm_num = as.matrix(gw_heatmap[,2:11])

#because you assigned the row names to 1 it doesn’t count that one as a line 
pos = data.frame("Stage" = gw_heatmap$Stage)
rownames(pos) = rownames(hm_num)
pos$Stage <- factor(pos$Stage, levels = c("Emergence stage","Early vegetative stage","Late vegetative stage","Flowering stage","Seed developmental stage"))
#om volgorde aan te duiden van de legende
breaklist = seq(0, 200, by = 1)
#cluster collumns
pheatmap(hm_num, cluster_cols = T, cluster_rows = F, fontsize = 12, fontsize_number = 12, fontsize_col = 12, fontsize_row = 12, gaps_row = c(3,7,11,15), annotation_row = pos, display_numbers = T, angle_col=315, number_format = '%#.1f', breaks = breaklist, color = rev(heat.colors(200)))
