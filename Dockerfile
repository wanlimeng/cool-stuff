#! /usr/local/bin/docker
FROM rocker/tidyverse

# install R packages like this
# put as close to top of script as possible to make best 
# use of caching and speed up builds
RUN Rscript -e "install.packages(c('sjPlot','sjmisc','sjlabelled','knitr','ggplot2'))"

# make a project directory in the container
# we will mount our local project directory to this directory
RUN mkdir /project

# make a output directory in the container
# write the html report to this directory
RUN mkdir /project/output

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/R/*.R

# set an environment variable
ENV proj="cancer"

# make container entry point bash
CMD make -C project report