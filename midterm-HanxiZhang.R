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

a<-wait(100,1)
hist(a)
b<-wait(1000,2)

lambda=2
L<-length(a)/100
x<-seq(min(a),max(a),0.1)
y<-dexp(x,lambda)*L
qplot(a,binwidth=0.1)+geom_line(aes(x,y,color="red"))


# create a vector of exponential waiting times which total t <= Max with lambda = lam

set.seed(50)
wait.until <- function(Max,lam){
  # set.seed(50)
  time = 0
  a = NULL
  while(time < Max){
    a = c(a,inter)
    time = time + inter
  }
  #return(a[1:(length(a)-1)]) ##test w seed ## haha use ()
  return(c(a[1:(length(a)-1)],"time"=time-inter))

}

wait.until(10,1)

# now simulate the number of events to show that the number of events divided by
# exponential waiting times are Poisson distributed
# (don't forget to comment out the "set.seed")

set.seed(50)
wait.until<-function(Max,lam){
  time=0
  a=NULL
}


poi.test <- function(rep, Max, lam){
  time=rep
  a = NULL
  for(i in 1:rep){
    q = wait.until(Max,lam)
  }
  return(a)
}

p1<-poi.test(1000,5,1)


# now simlate the waiting time for k events to occur with lambda = lam
set.seed(50)
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

wait.for(5,1)


gam.test <-function(rep, max.e, lam ){
  a=NULL
  for (i in 1:rep){
    t = wait.for(max.e,lam)
    a = c(a,t)
    
  }
  
  return(a)
}
gam.test(100,2,1)
  
  
 #Check for gamma

scale<-length(gam)/10
lambda<-mean(gam)/var(gam)
alpha<-mean(gam)^2/var(gam)
x<-seq(min(gam),max(gam),0.1)
y<-dgamma(x,alpha,rate-lambda)*scale
qplot(gam,binwidth=0.1)+geom_line(aes(x,y,color='red'))
  

#gamma function, shape=n,rate=lam,scale=1/lam

gamma<-function(k,lam){
  B<-matrix(c(rep(0,1000)),ncol=1)
  for(i in 1:1000){
    B[i]<-sum(wait(k,lam))
  }
  print(B)
}
  
#Check by gamma

C<-gamma(100,2)
