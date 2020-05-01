## @knitr setup

# This first chunk of code is for the document setup (code is hidden)

# define knitr options
# these have all been set to FALSE to produce a cleaner final document, set to TRUE while debugging
knitr::opts_chunk$set(echo = FALSE)
knitr::opts_chunk$set(warning = FALSE)
knitr::opts_chunk$set(message = FALSE)

# set any missing NAs in table to blank (makes nicer tables)
options(knitr.kable.NA='')

# load R packages (list all of them here to make it easier for users to know which packages to install)
library(fivethirtyeight)
library(tidyverse)
library(knitr)
library(kableExtra)
library(ggthemes)

## @knitr loadData

# load dataset
data("weather_check", package="fivethirtyeight")

# R objects created in your current (global) environment are not available to the R Markdown document when it is compiled, since the R Markdown document begins with an empty clean environment. As such, all objects must be created in the R Markdown document.
# create subset, no missing NAs (create all objects needed in document)
# pick a specific region
sdat <- weather_check %>%
        filter(region=="Mountain")