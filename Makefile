index.html: index.Rmd
	Rscript Compile.R
clean:
	rm cache/*
	touch index.Rmd
download:
	wget http://geocommons.com/overlays/21222.csv
	mv 21222.csv data/HealthFacilities.csv
	wget http://geocommons.com/overlays/21222.fgdc
	mv 21222.fgdc data/HealthFacilities.readme.xml
	wget http://www.census.gov/population/international/files/demobase/Haiti_gridded_population_estimates_2003.zip
	unzip Haiti_gridded_population_estimates_2003.zip
	mv 2003_pop_estimates.* data/
	mv Metadata.txt data/2003_pop_estimates.readme.txt
	rm Haiti_gridded_population_estimates_2003.zip
