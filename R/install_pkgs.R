#! /usr/local/bin/Rscript

# installed R packages that are needed to generate the report
installed_pkgs <- row.names(installed.packages())
pkgs <- c("sjPlot", "sjmisc", "sjlabelled", "knitr", "ggplot2")
for(p in pkgs){
  if(!(p %in% installed_pkgs)){
    install.packages(p)
  }
}