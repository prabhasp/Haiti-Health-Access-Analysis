HealthAccess.html: HealthAccess.Rmd
	Rscript Compile.R
clean:
	rm cache/*
	touch HealthAccess.Rmd
