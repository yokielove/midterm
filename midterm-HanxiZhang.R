library(ggplot2)
library(qualityTools)

# create a vector of w exponential waiting times with lambda = lam
set.seed(50)

wait <- function(w,lam){
  a=NULL
  for(i in 1:w){
    a = c(a,rexp(1,rate = lam))
  }
  return(a)
}

A<-wait(100,2)
A
hist(A)
B<-wait(1000,2)
B

lambda=2
L<-length(A)/100
x<-seq(min(A),max(A),0.1)
y<-dexp(x,lambda)*L
qplot(A,binwidth=0.1)+geom_line(aes(x,y,color="red"))


# create a vector of exponential waiting times which total t <= Max with lambda = lam

wait.until <- function(Max,lam){
  time = 0
  count=0
  a = NULL
  while(count < Max){
    inter=rexp(1,lam)
    count=count+1
    a = c(a,inter)
    time = time + inter
  }
  
  return(time)
  
}

wait.until(1000,2)

# now simulate the number of events to show that the number of events divided by
# exponential waiting times are Poisson distributed
# (don't forget to comment out the "set.seed")

wait.until<-function(Max,lam){
  time=0
  a=NULL
  while(time<Max){
    inter =rexp(1,lam)
    a=c(a,inter)
    time=time+inter
  }
  return(a[1:(length(a)-1)])
}

#Check
wait.until(1000,2)

poi.test <- function(rep, Max, lam){
  a = NULL
  for(i in 1:rep){
    q = wait.until(Max,lam)
    a=c(a,length(q))
  }
  return(a)
}

p1<-poi.test(1000,3,2)
p1

# now simlate the waiting time for k events to occur with lambda = lam

wait.for <- function(k, lam){
  time = 0
  count = 0
  a = NULL
  while(count < k){
    inter=rexp(1,lam)
    count = count + 1
    time = time+inter
  }
  
  return(time)
} 

wait.for(1000,2)


gam.test <-function(rep, max.e, lam ){
  a=NULL
  for (i in 1:rep){
    t = wait.for(max.e,lam)
    a = c(a,t)
    
  }
  
  return(a)
}
gam.test(1000,4,2)

#gamma function, shape=n,rate=lam,scale=1/lam

gamma<-function(k,lam){
  B<-matrix(c(rep(0,1000)),ncol=1)
  for(i in 1:1000){
    B[i]<-sum(wait(k,lam))
  }
  print(B)
}

#Check

gam.test(100,3,2)

gam.test(1000,10,2)

mean(gam.test(1000,10,2))

