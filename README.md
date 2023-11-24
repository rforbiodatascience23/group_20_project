# group_20_project

# /R/01_load.qmd downloads raw data via api call to uniprot

# Rendering /R/00_all.qmd will render all /R/*.qmd files individually

# Run the following from the terminal to render 00_all.qmd.
# Should be run with working directory as where the .Rproj file is located

# Render 00_all.qmd
quarto_render(/R/00_all.qmd)
# Move 00_all.html file
file.rename(from = "01_load.html",
            to = "../results/01_load.html")