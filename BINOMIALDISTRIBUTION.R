#BINOMIAL DISTRIBUTION
#X~BIN(n=20,p=1/6
#we can use pbinom and dbinom
?pbinom
?dbinom
#dbinom is used to find values for the probability density function of X,f(x)
#P(X=3)
dbinom(x=3,size = 20,prob=1/6)
#P(X=0...3)
dbinom(x=0:3,size = 20,prob=1/6)
#P(X<=3)
sum(dbinom(x=0:3,size = 20,prob=1/6))
#pbinom is used to give values for the probability distribution function of X,f(x)
#lower.tail=T for letting R know less than 
pbinom(q=3,size = 20,prob=1/6,lower.tail=T)

#rbinom is used to take a random sample from a binomial distribution
#qbinom is used to find quantiles for a binomial distribution
?abline
