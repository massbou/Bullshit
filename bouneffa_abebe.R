#Projet Statistiques
#Abebe Fanuel p1311388
#Bouneffa Massinissa p


#EXO 1
setwd("C:\\Users\\tfano_000\\Documents\\L3\\stat\\projet")
??csv
a=read.csv("enquete6mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")
(a)
table(a)
summary(a)
plot(a$enactivite,  col=rainbow(2))
barplot(a$enactivite, col=rainbow(2))
plot(a$cadre,  col=rainbow(2))
hist(a$cadre, col=rainbow(2))
plot(a$contrat)
hist(a$salaire)
boxplot(a$salaire)
