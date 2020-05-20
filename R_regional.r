
# This R code generates REGIONAL graphs
clegenda <- c("Positive, total", "Deceased", "Recovered", "Positive (new, delta)", "Positive, current", "Home confinement", "Hospitalized, ICU", "Hospitalized, non-ICU", "Hospitalized, total") #Legenda
colori <- c("red", "gray0", "seagreen4", "gold", "red3", "cyan", "mediumorchid3", "deepskyblue2", "navyblue") #Colors

# Generates regional graph for a given region
func_reg_graph <- function(dataset_cache, file_name) {
  png(file_name, width = 2500, height = 1250, pointsize = 50)
  plot(dataset_cache$totale_casi,type = "l", col = colori[c(1)], xlab = "", ylab = "Cases", main = dataset_cache$denominazione_regione[[1]], xaxt='n', lwd = 3)
  lines(dataset_cache$deceduti, type = "l", lwd = 3, col = colori[c(2)])
  lines(dataset_cache$dimessi_guariti, type = "l", lwd = 3, col = colori[c(3)])
  lines(dataset_cache$nuovi_positivi, type = "l", lwd = 3, col = colori[c(4)])
  lines(dataset_cache$totale_attualmente_positivi, type = "l", lwd = 3, col = colori[c(5)])
  lines(dataset_cache$isolamento_domiciliare, type = "l", lwd = 3, col = colori[c(6)])
  lines(dataset_cache$terapia_intensiva, type = "l", lwd = 3, col = colori[c(7)])
  lines(dataset_cache$ricoverati_con_sintomi, type = "l", lwd = 3, col = colori[c(8)])
  lines(dataset_cache$totale_ospedalizzati, type = "l", lwd = 3, col = colori[c(9)])
  legend("topleft", inset = .02, legend=clegenda, col=colori, lty=1, cex=0.5, lwd = 6)
  axis(1, at=1:day_count, labels=dataset_cache$data, las = 2, cex.axis = 0.5)
  dev.off()
}

# Plots regions
for (region_code in 1:20) {
  region_subset <- subset(covid19_regioni, codice_regione == region_code)
  
  # To fix the 'sum is not meaningful for factors' error, remove unnecessary character variables
  region_subset$casi_testati = NULL
  region_subset$note_en = NULL
  region_subset$note_it = NULL
  
  # Ensure that 'tamponi' is a numeric variable
  region_subset$tamponi = 
    as.numeric(region_subset$tamponi)
  
  # Handles and merge Trento and Bolzano
  if (region_code == 4){
    # Drops non-numerical columns
    region_subset <- select(region_subset, -c(2:6))
    # Converts to numeric
    region_subset[, c(2:11)] <- sapply(region_subset[, c(2:11)], as.numeric)
    # Aggregates by date, summing every other field
    region_subset <- aggregate(. ~data, data=region_subset, sum)
    # Inserts dropped columns after date (first) columns
    region_subset <- add_column(region_subset, stato = "ITA", codice_regione = 4, denominazione_regione = "Trentino Alto Adige", lat = 46.06893511, long = 11.12123097, .after = 1)
  }
  
  merged_region_name <- gsub(" ", "_", region_subset$denominazione_regione[1])
  merged_region_name <- gsub("'", "_", merged_region_name)
  region_plot_dir = paste("plot/regional/", merged_region_name, ".png", sep="")
  func_reg_graph(region_subset, region_plot_dir)
}


