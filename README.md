# Read me for group 20 github repo

## Project contributors

Here the student number and github username for all project contributors are stated.

Anton: (s183220), AntonWangDTU\
Line: (s184242), line-dh\
Jeppe: (s213426), JeppeMikkelsenDenmark\
Oscar: (s193775), OscarBaadWard\
Johan: (s225001), johanstaffeldt

## Data availability

/R/01_load.qmd downloads raw data via API call to uniprot and saves data in the directory data/\_raw.\
If you wish to download data for other purposes, then use the URLs from there.

## Dependencies

Following packages are required

-   tidyverse

-   knitr

-   patchwork

-   ggseqlogo

## Instruction to run the project

Running these lines of code from console in R will run the entire project

Working directory should be the root project directory (where the .Rproj file is located)

Rendering /R/00_all.qmd will render all /R/\*.qmd files individually as well

```{r}
# Creating data folder with subdir _raw
dir.create("data")
dir.create("data/_raw")

# loading library
library(quarto)

# Render 00_all.qmd document will run the entire project
quarto_render("R/00_all.qmd")
file.rename(from = "00_all.html", to = "../results/00_all.html")
```
