# This R code generates REGIONAL graphs



clegenda <- c("Positive, total", "Deceased", "Recovered", "Positive, new", "Positive, current", "Home confinement", "Hospitalized, ICU", "Hospitalilzed, non-ICU", "Hospitalized, total") #Legenda
colori <- c("red", "gray0", "seagreen4", "gold", "red3", "cyan", "mediumorchid3", "deepskyblue2", "navyblue") #Colors





func_reg_graph <- function(dataset_cache, file_name) { # This function generate a general graph for each region
  png(file_name, width = 2500, height = 1250, pointsize = 50)
  plot(dataset_cache$totale_casi,type = "l", col = colori[c(1)], xlab = "", ylab = "Cases", main = dataset_cache$denominazione_regione[[1]], xaxt='n', lwd = 3)
  lines(dataset_cache$deceduti, type = "l", lwd = 3, col = colori[c(2)])
  lines(dataset_cache$dimessi_guariti, type = "l", lwd = 3, col = colori[c(3)])
  lines(dataset_cache$nuovi_attualmente_positivi, type = "l", lwd = 3, col = colori[c(4)])
  lines(dataset_cache$totale_attualmente_positivi, type = "l", lwd = 3, col = colori[c(5)])
  lines(dataset_cache$isolamento_domiciliare, type = "l", lwd = 3, col = colori[c(6)])
  lines(dataset_cache$terapia_intensiva, type = "l", lwd = 3, col = colori[c(7)])
  lines(dataset_cache$ricoverati_con_sintomi, type = "l", lwd = 3, col = colori[c(8)])
  lines(dataset_cache$totale_ospedalizzati, type = "l", lwd = 3, col = colori[c(9)])
  legend("topleft", inset = .02, legend=clegenda, col=colori, lty=1, cex=0.8, lwd = 6)
  axis(1, at=1:day_count, labels=dataset_cache$data, las = 2, cex.axis = 0.8)
  dev.off()
}

func_reg_graph(dataset_Abruzzo, "plot/regional/abruzzo.png")
func_reg_graph(dataset_Basilicata, "plot/regional/basilicata.png")
func_reg_graph(dataset_Calabria, "plot/regional/calabria.png")
func_reg_graph(dataset_Campania, "plot/regional/campania.png")
func_reg_graph(dataset_EmiliaRomagna, "plot/regional/emiliaromagna.png")
func_reg_graph(dataset_FriuliVeneziaGiulia, "plot/regional/friuliveneziagiulia.png")
func_reg_graph(dataset_Lazio, "plot/regional/lazio.png")
func_reg_graph(dataset_Liguria, "plot/regional/liguria.png")
func_reg_graph(dataset_Lombardia, "plot/regional/lombardia.png")
func_reg_graph(dataset_Marche, "plot/regional/marche.png")
func_reg_graph(dataset_Molise, "plot/regional/molise.png")
func_reg_graph(dataset_Piemonte, "plot/regional/piemonte.png")
func_reg_graph(dataset_Puglia, "plot/regional/puglia.png")
func_reg_graph(dataset_Sardegna, "plot/regional/sardegna.png")
func_reg_graph(dataset_Sicilia, "plot/regional/sicilia.png")
func_reg_graph(dataset_Toscana, "plot/regional/toscana.png")
#func_reg_graph(dataset_TrentinoAltoAdige, "plot/regional/trentinoaa.png")
func_reg_graph(dataset_Umbria, "plot/regional/umbria.png")
func_reg_graph(dataset_ValleDAosta, "plot/regional/valledaosta.png")
func_reg_graph(dataset_Veneto, "plot/regional/veneto.png")



