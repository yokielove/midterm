#Rain Gauge

library(ggplot2)

#Reading DATA
L.00.01 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-01.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.02 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-02.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.03 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-03.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.04 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-04.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.05 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-05.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.06 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-06.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.07 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-07.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.08 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-08.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.09 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-09.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.10 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-10.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.11 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-11.txt", skip = 2,stringsAsFactors = F,header=T)
L.00.12 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-00-12.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.01 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-01.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.02 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-02.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.03 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-03.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.04 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-04.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.05 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-05.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.06 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-06.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.07 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-07.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.08 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-08.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.09 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-09.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.10 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-10.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.11 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-11.txt", skip = 2,stringsAsFactors = F,header=T)
L.01.12 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-01-12.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.01 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-01.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.02 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-02.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.03 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-03.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.04 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-04.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.05 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-05.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.06 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-06.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.07 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-07.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.08 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-08.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.09 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-09.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.10 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-10.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.11 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-11.txt", skip = 2,stringsAsFactors = F,header=T)
L.02.12 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-02-12.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.01 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-01.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.02 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-02.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.03 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-03.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.04 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-04.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.05 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-05.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.06 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-06.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.07 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-07.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.08 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-08.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.09 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-09.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.10 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-10.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.11 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-11.txt", skip = 2,stringsAsFactors = F,header=T)
L.03.12 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-03-12.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.01 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-01.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.02 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-02.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.03 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-03.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.04 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-04.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.05 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-05.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.06 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-06.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.07 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-07.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.08 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-08.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.09 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-09.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.10 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-10.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.11 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-11.txt", skip = 2,stringsAsFactors = F,header=T)
L.04.12 <- read.csv("F:/MSSP/2015FALL/MA 881/midterm/raw data/L-04-12.txt", skip = 2,stringsAsFactors = F,header=T)

#Combine all data become one
rain<-rbind(L.00.01,L.00.02,L.00.03,L.00.04,L.00.05,L.00.06,L.00.07,L.00.08,L.00.09,L.00.10,L.00.11,L.00.12,
             L.01.01,L.01.02,L.01.03,L.01.04,L.01.05,L.01.06,L.01.07,L.01.08,L.01.09,L.01.10,L.01.11,L.01.12,
             L.02.01,L.02.02,L.02.03,L.02.04,L.02.05,L.02.06,L.02.07,L.02.08,L.02.09,L.02.10,L.02.11,L.02.12,
             L.03.01,L.03.02,L.03.03,L.03.04,L.03.05,L.03.06,L.03.07,L.03.08,L.03.09,L.03.10,L.03.11,L.03.12,
             L.04.01,L.04.02,L.04.03,L.04.04,L.04.05,L.04.06,L.04.07,L.04.08,L.04.09,L.04.10,L.04.11,L.04.12)


#Cleaning DATA
colnames(rain) <- 0:24
rain[rain=="----"] <- 0
rain[rain=="T   "] <-10^(-5)
rain[rain=="M   "]<--0
rain[rain=="M"] <- 0
head(rain)

#Deleted the first column
rain1<-rain[,(2:25)]
head(rain1)

#make it become numeric
rain2<-as.data.frame(sapply(rain1,as.numeric))
rain3<-rain2[complete.cases(rain2),]
rain4<-as.vector(t(rain3))

#storm function
sum <- 0
j=1
tmp<-0
for(i in 1:length(rain4)) 
{
  if(rain4[i] != 0)
  {
    sum=sum+rain4[i]
  }
  if(rain4[i]==0 && sum!=0)
  {
    tmp[j]=sum
    j=j+1
    sum=0
  }
  if(rain4[i]!=0 & i==length(rain4))
  {
    tmp[j]=sum 
  }
}

#delete T
class(tmp)
a<-round(tmp,2)
b<-a[a!=0.00]

rain5<-data.frame(b)
colnames(rain5)<-"x"
qplot(x, data=rain5, geom = "histogram",binwidth=.15)

mean(rain5$x)
var(rain5$x)

#MEE
alpha <- mean(rain5$x)^2/var(rain5$x) 
alpha
lambda <- mean(rain5$x)/var(rain5$x) 
lambda

#Test if it is gamma distribution
gamma<-(lambda^(alpha)/gamma(alpha))*(rain5$x^(alpha-1))*exp(-lambda*rain5$x)
gamma1<-data.frame(gamma)

ggplot(gamma, aes(x=gamma1$gamma)) + geom_histogram(aes(y=..density..),binwidth=.5,colour="black", fill="white") +geom_density(alpha=.2, fill="#FF6666")

ggplot(rain5, aes(x=rain5$x)) +geom_histogram(aes(y=..density..), binwidth=.5,colour="black", fill="white") + geom_density(alpha=.2, fill="#FF6666")

#Bootstrap
B<-1000
Tboot1<-rep(0,B)
Tboot2<-rep(0,B)
for(i in 1:B){
   x <- sample(rain5$x,1000,replace=TRUE)
  Tboot1[i] <- mean(x)/(sd(x)^2)
  Tboot2[i] <- (mean(x))^2/(sd(x)^2)
  }

Percentile1 <- c(quantile(Tboot1,.025),quantile(Tboot1,.975))
pivotal1 <- c((2*lambda - quantile(Tboot1, .975)),(2*lambda - quantile(Tboot1, .025))) 

cat("Method       95% Interval\n")
cat("Pivotal1     (", pivotal1[1], ",     ", pivotal1[2], ") \n")
cat("Percentile1  (", Percentile1[1], ",    ", Percentile1[2], ") \n")

  
Percentile2 <- c(quantile(Tboot2,.025),quantile(Tboot2,.975))
pivotal2 <- c((2*alpha - quantile(Tboot2, .975)),(2*alpha - quantile(Tboot2, .025))) 

cat("Method       95% Interval\n")
cat("Pivotal2     (", pivotal2[1], ",     ", pivotal2[2], ") \n")
cat("Percentile2  (", Percentile2[1], ",    ", Percentile2[2], ") \n")

#MLE
#MLE should be as same as MEE

n<-length(rain5)

minus.likelihood <- function(theta) {-(n*theta[1]*log(theta[2])-n*lgamma(theta[1])+(theta[1]-1)*sum(log(rain2))-theta[2]*sum(rain2))}

max.likelihood <- nlminb(start=c(alpha, lambda), obj = minus.likelihood)

max.likelihood$par






