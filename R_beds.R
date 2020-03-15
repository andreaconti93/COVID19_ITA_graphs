beds_ITA <- read.csv("static_data/dataset_postiletto2018.csv", sep = ";", header = TRUE) # obtains all the available beds
beds_ICU <- subset(beds_ITA, beds_ITA$Codice.disciplina == 49)
