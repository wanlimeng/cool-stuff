## My project

For my project, I will analyze `dataR2.csv`, which is the Breast Cancer Coimbra Data Set obtained from UCI Machine Learning Repository. Clinical features were observed or measured for 64 patients with breast cancer and 52 healthy controls. There are 10 predictors, all quantitative, and a binary dependent variable, indicating the presence or absence of breast cancer.
The predictors are anthropometric data and parameters which can be gathered in routine blood analysis.

First, fork and git clone this repository on your local device. You will have a project folder called `cool-stuff` downloaded in your current directory.

The `cool-stuff` contains:

1. R folder: contains all R scrips needed to generate the report.
2. clean_data folder: currently empty, but will contain the clean data (cleandata.csv) needed to generate the report once you finish running the analysis.
3. figure folder: currently empty, but will contain the figures (fig1.png, fig2.png, fig3.png, fig4.png) needed to generate the report once you finish running the analysis.
4. output folder: currently empty, but will contain the final report (report.html) once you finish running the analysis.
5. raw_data folder: contains the raw data (dataR2.csv) needed to generate the report.
6. Dockerfile: builds a Docker image that you can pull from DockerHub.
7. Makefile: includes all the make rules needed for the analysis.

There are two ways to run the analysis using Docker or Make. If you have Docker installed and running, you can run the analysis using Docker, otherwise, you can use Make.



## Execute the analysis using Docker
In order to run the following commands, make sure you are in the `cool-stuff` project folder on the command line.

### Download a built Docker image from DockerHub
In order to analyze the data, you need to pull a Docker image from DockerHub using the following command

``` bash
docker pull wanlimeng/cancer-proj
```

This will pull a Docker image called `wanlimeng/cancer-proj` from my DockerHub.\

### Generate final report (Docker)
Next, you will need to run the container and mount your local `cool-stuff` project folder to the project directory in the container in order to be able to view the output on your local device.

If your `cool-stuff` project folder is in the root directory, run the following command

``` bash
docker run -v ~/cool-stuff:/project wanlimeng/cancer-proj
```

This will generate a final report called `report.html` in the `output` folder inside your `cool-stuff` project folder. 


If your project folder is not in the root directory, modify the path before the : to reflect where the `cool-stuff` project folder is on your local device and run the following command

``` bash
docker run -v ~/your/local/path/to/cool-stuff:/project wanlimeng/cancer-proj
```

This will also generate a final report called `report.html` in the `output` folder inside your `cool-stuff` project folder. 


If you do not have the `cool-stuff` project folder downloaded, you can also run the analysis by running the following command

``` bash
docker run -v ~/cancer_output:/project/output wanlimeng/cancer-proj
```

This will generate a final report called `report.html` in the `cancer_output` folder in your root directory.



## Execute the analysis using Docker
In order to run the following commands, make sure you are in the `cool-stuff` project folder on the command line.

### Install R packages
To analyze the data you will need to install some `R` packages. The required packages can be installed by running the following command from the project folder.

``` bash
make install
```

### Generate final report (Make)
To generate the final report, from the project folder you can run

``` bash
make report
```

This will create a file called `report.html` in the `cool-stuff` project folder.

### Build a Docker image using Make
To build a Docker image of the project folder, from the project folder you can run

``` bash
make build
```

This will build a Docker image called cancer-proj.

### Makefile help
To get some helpful information about the Makefile, from the project folder you can run\

``` bash
make help
```
