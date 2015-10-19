#Data Preparation
library(plyr)
library(ggplot2)

#This is data preparation version 2,
#I am afriad that I misunderstand what to do, so I ask ZhuoJin Lyu, and 
#She teach me what exactly we need to do
#So i made a verson two of data preparation, I try to combine both them together,
#But debug always happen.

#choose a variable, and i choose obesity from RISKFACTORSANDACCESSTOCARE
set.seed(50)
Risk<-read.csv("RISKFACTORSANDACCESSTOCARE.csv",header=T,stringsAsFactors=FALSE)
head(Risk)

# Determine number of clusters, when it is 2
Risk<-Risk[,c("County_FIPS_Code","CHSI_County_Name","CHSI_State_Abbr","Obesity","CI_Min_Obesity","CI_Max_Obesity")]
head(Risk)

#Data Cleaning
sum(Risk$Obesity< 0)
sum(Risk$CI_Min_Obesity < 0)
sum(Risk$CI_Max_Obesity <0)

#Credit for ZhuoJin Lyu
Obesity <- mean(Risk$Obesity[Risk$Obesity >= 0])

for(i in 1:length(Risk$Obesity))
{
  if(Risk$Obesity[i] < 0)
  {
    Risk$Obesity[i] <- Obesity
  }
}

min.obesity<- mean(Risk$CI_Min_Obesity[Risk$CI_Min_Obesity>= 0])

for(i in 1:length(Risk$CI_Min_Obesity))
{
  if(Risk$CI_Min_Obesity[i] < 0)
  {
    Risk$CI_Min_Obesity[i] <- min.obesity
  }
}

max.obesity<- mean(Risk$CI_Max_Obesity[Risk$CI_Max_Obesity>= 0])

for(i in 1:length(Risk$CI_Max_Obesity))
{
  if(Risk$CI_Max_Obesity[i] < 0)
  {
    Risk$CI_Max_Obesity[i] <- max.obesity
  }
}

Obesity<-na.omit(Obesity)
obesity<-scale(Obesity)

min.obesity<-na.omit(min.obesity)
min.obesity<-scale(min.obesity)

max.obesity<-na.omit(max.obesity)
max.obesity<-scale(max.obesity)

View(Risk)
summary(Risk)

library(useful)
Risk1 <- FitKMeans(Risk[, 4:6], max.clusters = 3, nstart = 25)
Risk1

Risk2 <- kmeans(x = Risk[, 4:6], centers = 4, nstart = 25)
Risk2

boxplot(Risk[, 4:6])


  
  

