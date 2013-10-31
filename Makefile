index.html: index.Rmd assets/css/*
	Rscript Compile.R
clean:
	rm cache/*
	touch index.Rmd
download: data/HealthFacilities.csv data/HealthFacilities.readme.xml data/2003_pop_estimates.readme.txt data/2003_pop_estimates.tif data/Haiti_Sections_Final_WGS84.shp data/Haiti_Sections_Final_WGS84.readme.txt data/HaitiBaseMapPlain_utm.rds

data/HealthFacilities.csv: 
	wget http://geocommons.com/overlays/21222.csv
	mv 21222.csv data/HealthFacilities.csv
data/HealthFacilities.readme.xml:
	wget http://geocommons.com/overlays/21222.fgdc
	mv 21222.fgdc data/HealthFacilities.readme.xml
data/2003_pop_estimates.readme.txt data/2003_pop_estimates.tif: 
	wget http://www.census.gov/population/international/files/demobase/Haiti_gridded_population_estimates_2003.zip
	unzip Haiti_gridded_population_estimates_2003.zip
	mv 2003_pop_estimates.* data/
	mv Metadata.txt data/2003_pop_estimates.readme.txt
	rm Haiti_gridded_population_estimates_2003.zip
data/Haiti_Sections_Final_WGS84.shp data/Haiti_Sections_Final_WGS84.readme.txt:
	wget http://www.census.gov/population/international/files/demobase/Haiti_sections_with_2003_census_data.zip
	unzip Haiti_sections_with_2003_census_data.zip
	mv Haiti_Sections_Final_WGS84.* data/
	mv Readme.txt data/Haiti_Sections_Final_WGS84.readme.txt
	rm Haiti_sections_with_2003_census_data.zip
data/HaitiBaseMapPlain_utm.rds:
	Rscript DownloadMaps.R
