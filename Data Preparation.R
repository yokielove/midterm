#Data Preparation
library(plyr)
#choose a variable, and i choose obesity from RISKFACTORSANDACCESSTOCARE
set.seed(50)
Risk<-read.csv("RISKFACTORSANDACCESSTOCARE.csv",header=T,stringsAsFactors=FALSE)
head(Risk)

Risk[Risk=="-1111.1"] <- 0

head(Risk)
summary(Risk)

# Determine number of clusters, when it is 2
obesity<-Risk[,c("Obesity")]
head(obesity)
obesity<-na.omit(obesity)
obesity<-scale(obesity)

wssplot <- function(obesity, nc=15, seed=1234){
  wss <- (nrow(obesity)-1)*sum(apply(obesity,2,var))
  for (i in 2:nc){
    set.seed(seed)
    wss[i] <- sum(kmeans(obesity, centers=i)$withinss)}
  plot(1:nc, wss, type="b", xlab="Number of Clusters",
       ylab="Within groups sum of squares")}

wssplot(obesity)

# K-Means Cluster Analysis, clusters for 2
fit <- kmeans(obesity, 2) # 2 cluster solution
# get cluster means 
aggregate(obesity,by=list(fit$cluster),FUN=mean)
# append cluster assignment
obesity <- data.frame(obesity, fit$cluster)


dim(obesity)
obesityk<-kmeans(x=obesity,centers=2)
obesityk

# K-Means Cluster Analysis, clusters for 5
fit <- kmeans(obesity, 5) # 2 cluster solution
# get cluster means 
aggregate(obesity,by=list(fit$cluster),FUN=mean)
# append cluster assignment
obesity <- data.frame(obesity, fit$cluster)

dim(obesity)
obesityk<-kmeans(x=obesity,centers=5)
obesityk

