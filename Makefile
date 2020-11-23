# rule for installing R packages
.PHONY: install
install: R/install_pkgs.R
	chmod +x R/install_pkgs.R && \
	Rscript R/install_pkgs.R

# rule for making report  
.PHONY: report
report: raw_data/dataR2.csv R/report.Rmd figure/fig1.png figure/fig2.png figure/fig3.png figure/fig4.png
	cd R && \
	Rscript -e "rmarkdown::render('report.Rmd', output_file = '../output/report.html')"

# rule for cleaning data
clean_data/cleandata.csv: R/clean_data.R raw_data/dataR2.csv
	chmod +x R/clean_data.R && \
	Rscript R/clean_data.R

# rule for making a figure X.png from source file make_%.R
figure/%.png: R/make_%.R clean_data/cleandata.csv
	chmod +x R/make_$*.R && \
	Rscript R/make_$*.R

.PHONY: help
help:
	@echo "report.html   : Generate final analysis report."
	@echo "cleandata.csv : Clean raw data dataR2.csv."
	@echo "fig1.png      : Boxplot of Glucose."
	@echo "fig2.png      : Boxplot of Insulin."
	@echo "fig3.png      : Boxplot of HOMA."
	@echo "fig4.png      : Boxplot of Resistin."

.PHONY: build
build: Dockerfile
	docker build -t cancer-proj . && \
	docker run -v ~/cool-stuff:/project cancer-proj

