lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
# IN A LINEAR REGRESSION MODEL, THE INTERCCEPT (CONSTANT TERM ) REFERS TO THE ESTIMATED Y VALUE FOR THE REFERENCE(BASELINE)
#GROUP AND THE MODEL COEFFICIENTS(PARAMETER B) REFERS TO THE EXPECTED CHANGE IN MEAN VALUE Y ,RELATIVE TO THE REFERENCE GROUP
levels(Smoke)
?relevel
mod1<-lm(LungCap~Age+Smoke)
summary(mod1)
# output IS AS= INTERCEPT+0.55X(AGE)-0.64X(SMOKE
# R CHOOSES BASELINE BY DEFAULT IS THE FIRST CATEGORY THAT APPEARS ALPHABETICALY OR NUMERICALY
table(Smoke)
# now releveling
Smoke1<-relevel(Smoke,ref = "yes")
table(Smoke1)
summary(Smoke1)
#
mod2<-lm(LungCap~Age+Smoke)
summary(mod2)
# we can see nothing has changed as we had only reparametrized a model known as reparametrizing a model

# INCLUDING A CATEGORICAL VARIABLE INTO A REGRESSION MODEL
#EXAMPLE1
#now creating a graph
plot(Age[Smoke=="no"],LungCap[Smoke=="no"],main="LUNGCAP VS AGE,SMOKE",xlab = "AGE",ylab = "LUNGCAPACITY",col="blue",ylim=c(0,15))
points(Age[Smoke=="yes"],LungCap[Smoke=="yes"],col="red",pch=16)
legend(3,15,legend = c("NON SMOKER","SMOKER"),col = c("blue","red"),pch=c(1,16))
# now adding regression line for non smokers blue
#a=intercept
#b=slope
abline(a=1.08,b=0.55,col="blue",lwd=3)
#smokers
abline(a=0.431,b=0.55,col="red",lwd=3)

#INTERPRETATION
# EFFECT ON LUNGCAPACITY AS AGE INCRESES BY ONE YEAR WE EXPECT THE MEAN LUNG CAPACITY TO INCREASE BY 0.55 % AND IT IS NOT DEPENDENT ON WHETHER YOU SMOKE OR NON SMOKE AS IT IS SEEN BY THE PARALLEL LINE
#FOR A SMOKER LUNG CAPACITY DECREASES BY 0.6%
#AGE HAS AN EFFECT ON MEAN LUNG CAPACITY
#AGE IS INDEPENDENT OF SMOKING
#EFFECT OF SMOKING IS INDEPENDENT OF AGE
# THERE IS NO INTERACTION BTW SMOKING AND AGE
# OR THE EFFECT OF SMOKING IS NOT MODIFIED BY AGE
#IF NOT INDEPENDENT THEN THE LINES WOULD INTERSECT

#EXAMPLE 2
# CREATING A CATEGORICAL REPRESENTATION OF HEIGHT
catheight<-cut(Height,breaks = c(0,50,55,60,65,70,100),labels=c("a","b","c","d","e","f"))
catheight[1:10]
class(catheight)
