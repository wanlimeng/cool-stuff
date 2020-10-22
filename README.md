## My project

For my project, I will analyze `dataR2.csv`, which is the Breast Cancer Coimbra Data Set obtained from UCI Machine Learning Repository. Clinical features were observed or measured for 64 patients with breast cancer and 52 healthy controls. There are 10 predictors, all quantitative, and a binary dependent variable, indicating the presence or absence of breast cancer.
The predictors are anthropometric data and parameters which can be gathered in routine blood analysis.
 

## Install R packages

To analyze the data you will need to install some `R` packages. The required packages can be installed by running the following command from the project folder. 

``` bash
make install
```

## Execute the analysis

To execute the analysis, from the project folder you can run

``` bash
make report.html
```

This will create a file called `report.html` output in your directory that contains the results. 


## Makefile help

To get some helpful information about the Makefile, from the project folder you can run

``` bash
make help
```
