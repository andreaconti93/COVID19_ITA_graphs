#Thematic script for hospitals; regional and top 5 (by total cases)

# GRAPH 1: ICU, top 5
png("plot/thematic/Top5_ICU.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$terapia_intensiva,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Hospitalized, ICU (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$terapia_intensiva, type = "l", lwd = 3, col = "blue")
lines(top_3$terapia_intensiva, type = "l", lwd = 3, col = "green")
lines(top_4$terapia_intensiva, type = "l", lwd = 3, col = "orange")
lines(top_5$terapia_intensiva, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 2: non-ICU, top 5
png("plot/thematic/Top5_nonICU.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$ricoverati_con_sintomi,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Hospitalized, non-ICU (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$ricoverati_con_sintomi, type = "l", lwd = 3, col = "blue")
lines(top_3$ricoverati_con_sintomi, type = "l", lwd = 3, col = "green")
lines(top_4$ricoverati_con_sintomi, type = "l", lwd = 3, col = "orange")
lines(top_5$ricoverati_con_sintomi, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 3: total hospitalized, top 5
png("plot/thematic/Top5_hosp.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$totale_ospedalizzati,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Hospitalized, total (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$totale_ospedalizzati, type = "l", lwd = 3, col = "blue")
lines(top_3$totale_ospedalizzati, type = "l", lwd = 3, col = "green")
lines(top_4$totale_ospedalizzati, type = "l", lwd = 3, col = "orange")
lines(top_5$totale_ospedalizzati, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 4: total deceased, top 5
png("plot/thematic/Top5_deceased.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$deceduti,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Deceased, total (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$deceduti, type = "l", lwd = 3, col = "blue")
lines(top_3$deceduti, type = "l", lwd = 3, col = "green")
lines(top_4$deceduti, type = "l", lwd = 3, col = "orange")
lines(top_5$deceduti, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 5: total swabs, top 5
png("plot/thematic/Top5_swabs.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$tamponi,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Swabs (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$tamponi, type = "l", lwd = 3, col = "blue")
lines(top_3$tamponi, type = "l", lwd = 3, col = "green")
lines(top_4$tamponi, type = "l", lwd = 3, col = "orange")
lines(top_5$tamponi, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 6: recovered, top 5
png("plot/thematic/Top5_recovered.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$dimessi_guariti,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Recovered (top 5 regions)", xaxt='n', lwd = 3)
lines(top_2$dimessi_guariti, type = "l", lwd = 3, col = "blue")
lines(top_3$dimessi_guariti, type = "l", lwd = 3, col = "green")
lines(top_4$dimessi_guariti, type = "l", lwd = 3, col = "orange")
lines(top_5$dimessi_guariti, type = "l", lwd = 3, col = "purple")
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()

# GRAPH 7: variaton, top 5
png("plot/thematic/Top5_delta.png", width = 2500, height = 1250, pointsize = 50)
plot(top_1$variazione_totale_positivi,type = "l", col = "red", xlab = "", ylab = "Cases", main = "Positive case variation (delta)", xaxt='n', lwd = 3)
lines(top_2$variazione_totale_positivi, type = "l", lwd = 3, col = "blue")
lines(top_3$variazione_totale_positivi, type = "l", lwd = 3, col = "green")
lines(top_4$variazione_totale_positivi, type = "l", lwd = 3, col = "orange")
lines(top_5$variazione_totale_positivi, type = "l", lwd = 3, col = "purple")
abline(h = 0, col = "black", lwd = 2)
legend("topleft", inset = .02, legend=c(top_1$denominazione_regione[[1]], top_2$denominazione_regione[[1]], top_3$denominazione_regione[[1]], top_4$denominazione_regione[[1]], top_5$denominazione_regione[[1]]), col=c("red", "blue", "green", "orange", "purple"), lty=1, cex=0.75, lwd = 4)
axis(1, at=1:day_count, labels=top_1$data, las = 2, cex.axis = font_y)
dev.off()


