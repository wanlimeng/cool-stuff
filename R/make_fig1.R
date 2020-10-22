#! /usr/local/bin/Rscript

# boxplot for Glucose comparing two groups
candat <- read.csv("clean_data/cleandata.csv")
png("figure/fig1.png")
library(ggplot2)
candat$Classification <- factor(candat$Classification, labels = c("Control","Patient"))
ggplot(candat, aes(x=Classification, y=Glucose, fill=Classification)) +
  geom_boxplot()
dev.off()