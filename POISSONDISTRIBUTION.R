#X~POISSON(LAMBDA=7)
?dpois
#dpois to find values for the probability distribution function of X ,f(x)
#P(X=3)
dpois(x=4,lambda =7)
#P(X=0...4)
dpois(x=0:4,lambda = 7)
#P(X<=4)
sum(dpois(x=0:4,lambda = 7))
#ANOTHER METHOD
#ppois returns probability associated with the probability distribution function
ppois(q=4,lambda = 7,lower.tail = T)
#P(X>=12)
ppois(q=12,lambda = 7,lower.tail = F)
#RPOIS IS USED TO TAKE A RANDOM SAMPLE FROM A POISSON DISTRIBUTION
#QPOIS TO FIND QUANTILES FOR THE POISSON DISTRIBUTION
X<-seq(10,90,20)
X
?dpois
dpois(x=0:5,lambda = 1)
dpois(x=0:5,lambda = 2)
dpois(x=0:5,lambda = 3)
dpois(x=0:5,lambda = 4)
?par
