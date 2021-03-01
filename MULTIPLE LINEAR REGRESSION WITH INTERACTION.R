# IF X1 AND X2 INTERACTS THIS MEANS THAT THE EFFECT OF X1 ON Y DEPENDS ON THE VALUE OF X2 AND VICE VERSA 
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
class(Age)
class(Smoke)
levels(Smoke)
# we will study interaction btw smoking and age
plot(Age[Smoke=="no"],LungCap[Smoke=="no"],col="blue",ylim = c(0,15),xlim = c(0,20),xlab = "age",ylab = "lungcap", main="LUNGCAP VS AGE ,SMOKE")
#now for smokers in red
points(Age[Smoke=="yes"],LungCap[Smoke=="yes"],col="red",pch=16)
# now adding a legend
legend(1,15,legend=c("non smoker","smoker"),col=c("blue","red"),pch=c(1,16),bty="n")
#now adding regression lines
# we have studied parallel one that is independent
# the effect of age is modified by smoking
# they are dependent and donot act independently on mean lung capacity
# fit a regression model
model1<-lm(LungCap~Age*Smoke)
coef(model1)


# AGE*SMOKE=AGE:SMOKE
model1<-lm(LungCap~Age+Smoke+Age:Smoke)
summary(model1)
# we will get equation as =const-const1*AGE+const2*SMOKE-const3*AGE*SMOKE
# REGRESSION EQUATION FOR NON SMOKERS=INTERCEPT1+0.558*AGE(SMOKE=0)
#REGRESSION FOR SMOKERS=INTERCEPT2+0.498*AGE(SMOKE=1)
# NOW DRAWING REGRESSION LINES
abline(a=1.052,b=0.588,col="blue",lwd=3)
abline(a=1.278,b=0.498,col="red",lwd=3)

#THE EFFECT OF SMOKING DEPEND ON AGE ? 
#PROBABLY NOT
# IS THE INTERACTION TERM STATISTICALLLY SIGNIFICANT?



#MORE SIGNIFICANT IS THE ONE WHICH HAS NO INTERACTION
