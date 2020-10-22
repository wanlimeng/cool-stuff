#! /usr/local/bin/Rscript

# read data
rawdat <- read.csv("raw_data/dataR2.csv")

# change variable
rawdat$Classification <- ifelse(rawdat$Classification==1,0,1)

# save data
write.csv(rawdat, "clean_data/cleandata.csv", quote = FALSE, row.names = FALSE)