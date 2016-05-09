#Projet Statistiques
#Abebe Fanuel p1311388
#Bouneffa Massinissa p1310939



#Variables globales
Working_dir = "C:\\Users\\Massi\\Desktop\\L3\\Stats\\projet\\projet"
setwd(Working_dir)
enquete_6m=read.csv("enquete6mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")
enquete_18m=read.csv("enquete18mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")

#EXO 1
par(mfrow=c(2,2))
(enquete_6m)
table(enquete_6m)
summary(enquete_6m)
plot(enquete_6m$enactivite)
hist(enquete_6m$enactivite)
boxplot(enquete_6m$enactivite)

(enquete_18m)
table(enquete_18m)
summary(enquete_18m)
plot(enquete_18m$contrat)
hist(enquete_18m$salaire.1.an)
boxplot(enquete_18m$salaire.embauche)


