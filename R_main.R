# This is the main script.
# LICENSE: CC-BY-4.0 - https://creativecommons.org/licenses/by/4.0/ 
# Data source: Dipartimento della Protezione Civile - https://github.com/pcm-dpc/COVID-19
# Together we can defeat Coronavirus! Many thanks to everyone involved in the COVID response!

# Libraries
library(dplyr)


# Number of days
day_count <- as.numeric(max(as.Date(covid19_italia$data)) - min(as.Date(covid19_italia$data)) + 1)

source("R_dataretrieve.r") # retrieves data from DPC GitHub

top_1 <- dataset_Lombardia
top_2 <- dataset_EmiliaRomagna
top_3 <- dataset_Veneto
top_4 <- dataset_Piemonte
top_5 <- dataset_Marche

source("R_national.r") # plots the national graph
source("R_regional.r") # plots the regional graphs
source("R_thematic.r") # plots the thematic graphs