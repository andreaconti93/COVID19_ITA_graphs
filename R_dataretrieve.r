# This script get data from Italian Civil Protection GitHub

# Get data
covid19_regioni <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-regioni/dpc-covid19-ita-regioni.csv", header = TRUE) # Read regional CSV
covid19_province <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv", header = TRUE) # Read province CSV
covid19_italia <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-andamento-nazionale/dpc-covid19-ita-andamento-nazionale.csv", header = TRUE) # Read national CSV

# Removes the time, keeps the date
covid19_regioni[] <- lapply(covid19_regioni, gsub, pattern="[0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")
covid19_province[] <- lapply(covid19_province, gsub, pattern="[0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")
covid19_italia[] <- lapply(covid19_italia, gsub, pattern="[0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")

# Splits data in regional subsets
dataset_Piemonte <- subset(covid19_regioni, codice_regione == 1)
dataset_ValleDAosta <- subset(covid19_regioni, codice_regione == 2)
dataset_Lombardia <- subset(covid19_regioni, codice_regione == 3)
dataset_TrentinoAltoAdige <- subset(covid19_regioni, codice_regione == 4)
dataset_Veneto <- subset(covid19_regioni, codice_regione == 5)
dataset_FriuliVeneziaGiulia <- subset(covid19_regioni, codice_regione == 6)
dataset_Liguria <- subset(covid19_regioni, codice_regione == 7)
dataset_EmiliaRomagna <- subset(covid19_regioni, codice_regione == 8)
dataset_Toscana <- subset(covid19_regioni, codice_regione == 9)
dataset_Umbria <- subset(covid19_regioni, codice_regione == 10)
dataset_Marche <- subset(covid19_regioni, codice_regione == 11)
dataset_Lazio <- subset(covid19_regioni, codice_regione == 12)
dataset_Abruzzo <- subset(covid19_regioni, codice_regione == 13)
dataset_Molise <- subset(covid19_regioni, codice_regione == 14)
dataset_Campania <- subset(covid19_regioni, codice_regione == 15)
dataset_Puglia <- subset(covid19_regioni, codice_regione == 16)
dataset_Basilicata <- subset(covid19_regioni, codice_regione == 17)
dataset_Calabria <- subset(covid19_regioni, codice_regione == 18)
dataset_Sicilia <- subset(covid19_regioni, codice_regione == 19)
dataset_Sardegna <- subset(covid19_regioni, codice_regione == 20)


