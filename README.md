## My project

For my project, I will analyze `dataR2.csv`, which is the Breast Cancer Coimbra Data Set obtained from UCI Machine Learning Repository. 

To analyze the data you will need to install some `R` packages: `sjPlot`, `sjmisc`, `sjlabelled`. The required packages can be installed using the following `R` commands.

```{r}
installed_pkgs <- row.names(installed.packages())
pkgs <- c("sjPlot", "sjmisc", "sjlabelled")
for(p in pkgs){
	if(!(p %in% install_pkgs)){
		install.packages(p)
	}
}
```

## Execute the analysis

To execute the analysis, from the project folder you can run

```{r}
Rscript -e "rmarkdown::render('report.Rmd')"
```

This will create a file called `report.html` output in your directory that contains the results. 