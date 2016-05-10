#Projet Statistiques
#Abebe Fanuel p1311388
#Bouneffa Massinissa p1310939



#Variables globales
Working_dir = "C:\\Users\\Massi\\Desktop\\L3\\Stats\\projet\\projet"
setwd(Working_dir)
enquete_6m=read.csv("enquete6mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")
enquete_18m=read.csv("enquete18mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")

#QESTION 1
par(mfrow=c(2,2))

summary(enquete_6m)
hist(enquete_6m$enactivite, main = "En activité après 6 mois")

summary(enquete_18m)
hist(enquete_18m$en.activite, main = "En activité après 18 mois")






