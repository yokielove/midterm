#Data Preparation
library(plyr)
#choose a variable, and i choose obesity from RISKFACTORSANDACCESSTOCARE
set.seed(50)
Risk<-read.csv("RISKFACTORSANDACCESSTOCARE.csv",header=T,stringsAsFactors=FALSE)
attach(Risk)
head(Risk)

Risk[Risk=="-1111.1"] <- 0

head(Risk)
summary(Risk)

obesity<-Risk[,c("Obesity")]
head(obesity)
obesity<-na.omit(obesity)
obesity<-scale(obesity)

# Determine number of clusters,clusters for 2
wss <- (nrow(obesity)-1)*sum(apply(obesity,5,var))
for (i in 2:15) wss[i] <- sum(kmeans(obesity, 
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

# K-Means Cluster Analysis, clusters for 2
fit <- kmeans(obesity, 2) # 2 cluster solution
# get cluster means 
aggregate(obesity,by=list(fit$cluster),FUN=mean)
# append cluster assignment
obesity <- data.frame(obesity, fit$cluster)


dim(obesity)
obesityk<-kmeans(x=obesity,centers=2)
obesityk

# Determine number of clusters,clusters for 5
wss <- (nrow(obesity)-1)*sum(apply(obesity,5,var))
for (i in 5:15) wss[i] <- sum(kmeans(obesity, 
                                     centers=i)$withinss)
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

# K-Means Cluster Analysis, clusters for 5
fit <- kmeans(obesity, 5) # 2 cluster solution
# get cluster means 
aggregate(obesity,by=list(fit$cluster),FUN=mean)
# append cluster assignment
obesity <- data.frame(obesity, fit$cluster)


dim(obesity)
obesityk<-kmeans(x=obesity,centers=5)
obesityk


