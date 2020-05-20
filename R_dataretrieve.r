# This script get data from Italian Civil Protection GitHub

# Get data
covid19_regioni <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-regioni/dpc-covid19-ita-regioni.csv", header = TRUE) # Read regional CSV
covid19_province <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv", header = TRUE) # Read province CSV
covid19_italia <- read.csv("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-andamento-nazionale/dpc-covid19-ita-andamento-nazionale.csv", header = TRUE) # Read national CSV

# Removes the time, keeps the date
covid19_regioni[] <- lapply(covid19_regioni, gsub, pattern="[T][0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")
covid19_province[] <- lapply(covid19_province, gsub, pattern="[T][0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")
covid19_italia[] <- lapply(covid19_italia, gsub, pattern="[T][0-9][0-9]:[0-9][0-9]:[0-9][0-9]", replacement="")


# Adjustments for Province Autonome (Trento and Bolzano)
covid19_regioni$codice_regione <- as.character(covid19_regioni$codice_regione)
covid19_regioni$codice_regione[covid19_regioni$codice_regione == "21"] <-"4"
covid19_regioni$codice_regione[covid19_regioni$codice_regione == "22"] <-"4"