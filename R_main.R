# This is the main script.
# LICENSE: CC-BY-4.0 - https://creativecommons.org/licenses/by/4.0/ 
# Data source: Dipartimento della Protezione Civile - https://github.com/pcm-dpc/COVID-19
# Together we can defeat Coronavirus! Many thanks to everyone involved in the COVID response!

# Libraries
library(dplyr)




day_count <- 17 # number of days. Must be increased by 1 every day

source("R_dataretrieve.r") # retrieves data from DPC GitHub

top_1 <- dataset_Lombardia
top_2 <- dataset_EmiliaRomagna
top_3 <- dataset_Veneto
top_4 <- dataset_Piemonte
top_5 <- dataset_Marche

source("R_national.r") # plots the national graph
source("R_regional.r") # plots the regional graphs
source("R_thematic.r") # plots the thematic graphs