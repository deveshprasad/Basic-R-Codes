#X~N(MEAN=75,SD=5)
?pnorm
#P(X<=70)
pnorm(q=70,mean = 75,sd=5,lower.tail = T)
#by default lower tail is true
#P(X>=70)
pnorm(q=70,mean = 75,sd=5,lower.tail = F)
#find Q1
qnorm(p=0.25,mean=75,sd=5)
#PLOTTING PROBABILITY DENSITY FUNCTION
x<-seq(55,95,0.25)
x
#now probability density function
dens<-dnorm(x,mean=75,sd=5)
dens
plot(x,dens)
#for line type="l"
plot(x,dens,type="l")
#to add vertical line at mean
abline(v=75)
#TO DRAW RANDOM SAMPLES 
rand<-rnorm(n=45,mean=75,sd=5)
rand
hist(rand)
#histogram is of random no but doesnot look very like a normal distribution