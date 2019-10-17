# print figures


# Libraries & functions ---------------------------------------------------
library(treeio)
library(ggtree)
library(cowplot)
library(seqinr)
library(WriteXLS)
library(ggplot2)
library(dplyr)
library(knitr)
library(viridis)
library(gridExtra)
library(grid)
library(kableExtra)


# B clade -----------------------------------------------------------------

rm(list=ls())

# load image
load("RData/B_clusters.RData")

dir.create("figures")

# save bar plot
tiff(filename = "figures/ind_freq_pos31.33.128_clusterB.tiff", units = "cm", width = 10, height = 10, res = 300)
mm.plot
dev.off()

# save pie chart
tiff(filename = "figures/freq_comb_residues_PIE_out_1_revcol_clusterB.tiff", units = "cm", width = 12, height = 12, res = 300)
p1.plot.pie
dev.off()


# save trees
tiff(filename = "figures/tree_B_residues.tiff", units = "cm", width = 10, height = 10, res = 600)
plot_grid(tree.l.plot[[1]], tree.l.plot[[2]], tree.l.plot[[3]], tree.l.plot[[4]], nrow = 2,
          labels = names(tree.list.B), label_x = rep(0.25, 4))
dev.off()

postscript("figures/tree_B_residues.eps", width = 480, height = 480)
plot_grid(tree.l.plot[[1]], tree.l.plot[[2]], tree.l.plot[[3]], tree.l.plot[[4]], nrow = 2,
          labels = names(tree.list.B), label_x = rep(0.25, 4))
dev.off()

pdf(file = "figures/tree_B_residues.pdf")
plot_grid(tree.l.plot[[1]], tree.l.plot[[2]], tree.l.plot[[3]], tree.l.plot[[4]], nrow = 2,
          labels = names(tree.list.B), label_x = rep(0.25, 4))
dev.off()



# All_sequences -----------------------------------------------------------

rm(list=ls())

# load image 
load("RData/All_clusters.RData")

# save bar plot file
tiff(filename = "figures/ind_freq_pos31.33.128.tiff", units = "cm", width = 10, height = 10, res = 300)
mm.plot
dev.off()


tiff(filename = "freq_comb_residues_PIE_out_1_revcol.tiff", units = "cm", width = 12, height = 12, res = 300)
p1.plot.pie
dev.off()

# save trees for all sequences highlighting the residues
tiff(filename = "tree_all_residues.tiff", units = "cm", width = 10, height = 10, res = 600)
res.tree
dev.off()

postscript("figures/tree_all_residues.eps", width = 480, height = 480)
res.tree
dev.off()

pdf(file = "figures/tree_all_residues.pdf")
res.tree
dev.off()

# save trees for all sequences highlighting the clades
tiff(filename = "figures/tree_all_clade.tiff", units = "cm", width = 10, height = 10, res = 600)
clade.tree
dev.off()

postscript("figures/tree_all_clade.eps", width = 480, height = 480)
clade.tree
dev.off()

pdf(file = "figures/tree_all_clade.pdf")
clade.tree
dev.off()


