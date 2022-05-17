#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", "lubridate", "car", "tidyquant", # for wrangling
  "ggrepel", "gghighlight", "patchwork", "maps", "scales", "RColorBrewer",
  "cowplot", "plotly", "dygraphs", "xts", "highcharter", "ggthemes", "corrplot",
  "GGally", "ggcorrplot", "DataExplorer", "inspectdf", # for plotting
  "knitr", "kableExtra", "bookdown", "rmarkdown", "bslib",  # for the report
  "psych", "stargazer", "DT", "Hmisc", "psych",  # for the analysis
  "fpp3", "tsibbledata", "readxl", "reshape2", "patchwork", # fot time series
  "readxl" # read files
)
purrr::walk(packages, library, character.only = TRUE) 

######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
)

