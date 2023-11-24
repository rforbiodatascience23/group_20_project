# group_20_project

# /R/01_load.qmd downloads raw data via api call to uniprot

# Rendering /R/00_all.qmd will render all /R/*.qmd files individually



### Running these lines of code from terminal will run the entire project ###
# Should be run with working directory where the .Rproj file is located
# The code will create a data directory and store the raw data there
dir.create("data")
dir.create("data/_raw")
library(quarto)
quarto_render("R/00_all.qmd")
file.rename(from = "01_load.html",
            to = "../results/01_load.html")
            
            