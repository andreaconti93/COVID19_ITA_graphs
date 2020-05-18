# This is the main script.
# LICENSE: CC-BY-4.0 - https://creativecommons.org/licenses/by/4.0/ 
# Data source: Dipartimento della Protezione Civile - https://github.com/pcm-dpc/COVID-19
# Together we can defeat Coronavirus! Many thanks to everyone involved in the COVID response!

# Libraries
library(dplyr)
library(tibble)

source("R_dataretrieve.r") # retrieves data from DPC GitHub

# Number of days
day_count <- as.numeric(dim(covid19_italia)[1])

# TODO: get top 5 regions
top_1 <- subset(covid19_regioni, denominazione_regione == "Lombardia")
top_2 <- subset(covid19_regioni, denominazione_regione == "Emilia-Romagna") # Changed the name of "Emilia-Romagna" to reflect the change in the data set
top_3 <- subset(covid19_regioni, denominazione_regione == "Veneto")
top_4 <- subset(covid19_regioni, denominazione_regione == "Piemonte")
top_5 <- subset(covid19_regioni, denominazione_regione == "Marche")

source("R_national.r") # plots the national graph
source("R_regional.r") # plots the regional graphs
source("R_thematic.r") # plots the thematic graphs
