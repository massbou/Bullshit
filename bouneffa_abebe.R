#Projet Statistiques
#Abebe Fanuel p1311388
#Bouneffa Massinissa p1310939



#Variables globales
Working_dir = "C:\\Users\\Massi\\Desktop\\L3\\Stats\\projet\\projet"
setwd(Working_dir)
enquete_6m=read.csv("enquete6mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")
enquete_18m=read.csv("enquete18mois.csv",header = TRUE, dec = ".", sep = ";", na.strings = "NC")
par(mfrow=c(2,2))

#QUESTION 1

hist(enquete_6m$enactivite, main = "En activité après 6 mois")
summary(enquete_6m$enactivite)
table(enquete_6m$enactivite)

hist(enquete_18m$en.activite, main = "En activité après 18 mois")
summary(enquete_18m$en.activite)
table(enquete_18m$en.activite)

#QUESTION 2


hist(enquete_6m$cadre, main = "Cadres après 6 mois")
summary(enquete_6m$cadre)
table(enquete_6m$cadre)

hist(enquete_18m$cadre, main = "Cadres après 18 mois")
summary(enquete_18m$cadre)
table(enquete_18m$cadre)


#QUESTION 4

hist(enquete_6m$salaire, main = "Histogramme Salaire embauche après 6 mois")
boxplot(enquete_6m$salaire, main = "Boxplot Salaire embauche après 6 mois")
summary(enquete_6m$salaire)

hist(enquete_18m$salaire.embauche, main = "Histogramme Salaire embauche après 18 mois")
boxplot(enquete_18m$salaire.embauche, main = "Boxplot Salaire embauche après 18 mois")
summary(enquete_18m$salaire.embauche)


