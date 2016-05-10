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

t.test(enquete_6m$enactivite, enquete_18m$en.activite)

#QUESTION 2


hist(enquete_6m$cadre, main = "Cadres après 6 mois")
summary(enquete_6m$cadre)
table(enquete_6m$cadre)

hist(enquete_18m$cadre, main = "Cadres après 18 mois")
summary(enquete_18m$cadre)
table(enquete_18m$cadre)

t.test(enquete_6m$cadre, enquete_18m$cadre)


#QUESTION 3

contrat_6m = c() #Initialisation du vecteur
# Pour pouvoir avoir des valeurs numériques
for(val in enquete_6m$contrat){ 
  if(identical(val,"CDI")){ #Si c'est un CDI on insère 1
    contrat_6m = c(contrat_6m, 1) 
  } 
  else if(identical(val,"CDD")){ #Si c'est un CDD on insère 0
    contrat_6m = c(contrat_6m, 0)  
  } 
  else { #Sinon on insère 1
    contrat_6m = c(contrat_6m, NA)
  }
}

#On fait la même chose pour l'echantillon 18 mois
contrat_18m = c()
for(val in enquete_18m$contrat){ 
  if(identical(val,"CDI")){ 
    contrat_18m = c(contrat_18m, 1) 
  } 
  else if(identical(val,"CDD")){ 
    contrat_18m = c(contrat_18m, 0)  
  } 
  else {
    contrat_18m = c(contrat_18m, NA)
  }
}

hist(contrat_6m, main = "Contrats après 6 mois")
summary(contrat_6m)
table(contrat_6m)

hist(contrat_18m, main = "Contrats après 18 mois")
summary(contrat_18m)
table(contrat_18m)

t.test(contrat_6m, contrat_18m)


#QUESTION 4


hist(enquete_6m$salaire, main = "Histogramme Salaire embauche après 6 mois")
boxplot(enquete_6m$salaire, main = "Boxplot Salaire embauche après 6 mois")
summary(enquete_6m$salaire)

t.test(enquete_6m$salaire, conf.level = 0.90)$conf.int
t.test(enquete_6m$salaire, conf.level = 0.95)$conf.int
t.test(enquete_6m$salaire, conf.level = 0.99)$conf.int

hist(enquete_18m$salaire.embauche, main = "Histogramme Salaire embauche après 18 mois")
boxplot(enquete_18m$salaire.embauche, main = "Boxplot Salaire embauche après 18 mois")
summary(enquete_18m$salaire.embauche)

t.test(enquete_18m$salaire.embauche, conf.level = 0.90)$conf.int
t.test(enquete_18m$salaire.embauche, conf.level = 0.95)$conf.int
t.test(enquete_18m$salaire.embauche, conf.level = 0.99)$conf.int

#QUESTION 5


mean(enquete_6m$salaire, na.rm = TRUE)
mean(enquete_18m$salaire.embauche, na.rm = TRUE)

par(mfrow=c(1,2)) #Pour représenter sur un même cadre
boxplot(enquete_6m$salaire, main = "Après 6 mois")
boxplot(enquete_18m$salaire.embauche, main = "Après 18 mois")

