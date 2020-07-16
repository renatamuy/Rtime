# R time 16th July 2020

obs <- c("Renata-1988", "Sha-1982")

obs

nchar(obs)

# substr does not work for this

substr(obs, 8, 11)

require(stringr)

str_sub(obs, 1, 6)

str_sub(obs, -4, -1)

diseases <- c("P01-COVID19","P02-COVID19", "P01-HIV positive", "P199-HIV positive")

diseases

diseases_s <- sub("-", " ", diseases)

diseases_s

str_detect(diseases_s, " " )

list <- str_split(diseases, "-")

unlist(list)

df <- data.frame(t(as.data.frame(list)))

colnames(df) <- c("Patient", "Disease")

str(df)

row.names(df) <- NULL

row.names(df)

df$PatientID <- sub("P", "Patient ", df$PatientID)

df

setwd("D://")

getwd()

write.table(df, "Patients.txt", sep = "\t", row.names = FALSE, quote= FALSE)
