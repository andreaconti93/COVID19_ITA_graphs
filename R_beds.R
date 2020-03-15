beds_ITA <- read.csv("static_data/dataset_postiletto2018.csv", sep = ";", header = TRUE) # retrieve the dataset
beds_ITA[] <- lapply(beds_ITA, gsub, pattern="0", replacement="") # removes the zero
beds_ICU <- subset(beds_ITA, beds_ITA$Codice.disciplina == 49) # selects only ICU beds

for (region_code in 1:20) { # creates different, regional subsets
        beds_ICU_temp <-subset(beds_ICU, Codice.Regione == region_code)
        nam <- paste ("Reg", region_code, sep = "_")
        assign(nam, beds_ICU_temp)
}


# TODO: total of beds per region
# TODO: print hline with --- abline(h=15, col="blue", lwd = 3) within a recursive function
