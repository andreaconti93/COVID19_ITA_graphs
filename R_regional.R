day_count <- 17
clegenda <- c("Positive, total", "Deceased", "Recovered", "Positive, new", "Positive, current", "Home confinement", "Hospitalized, ICU", "Hospitalilzed, non-ICU", "Hospitalized, total")
colori <- c("red4", "black", "seagreen4", "red1", "orange", "darkturquoise", "dodgerblue4", "dodgerblue", "grey")


dataset_cache <- dataset_Veneto

# GRAPH 6: recovered, top 5
png("plot/regional/veneto.png", width = 2500, height = 1250, pointsize = 50)
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
