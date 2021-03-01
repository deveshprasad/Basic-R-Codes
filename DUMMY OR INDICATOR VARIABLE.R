# WE CAN INCLUDE CATEGORICAL OR QUALITATIVE VARIABLES ALSO KNOWN AS FACTORS IN A REGRESSION MODEL USING  DUMMY OR INDICATOR VARIABLES
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
# YOU MAY WANT TO MAKE SOME CROSS TABULATIONS FOR A VARIABLE FITTING FOR REGRESSION MODEL WHEN LINNEARITY ASSUMPTION IS NOT VALID FOR THE VARIABLE
class(Height)
Height[1:10]
# we will convert using cut command
?cut
# we will cfreate categories for height
catheight<-cut(Height,breaks = c(0,55,60,65,70,75,100),labels = c("a","b","c","d","e","f"))
# the intervals are left open and right closed = border observation goes into the left interval
#for example= A(0,50]
catheight[1:10]
# if no levels then the brackets will appear
# if you want 60 in 60-65 category use right=F
#breaks can be used as 1,3,4,55...

#NOW FOR INDICATOR VARIABLE
#CATEGORICAL VARIABLES WITH K LEVELS OR CATEGORIES  REQUIRES K-1 DUMMIES OR INDICATOR VARIABLES
levels(Smoke)
#x=1 if smoke
#x=0 if not smoke it can be changed in respect to non smoker
#HEIGHT A CATEGORY XB=0,XC=0,XD=0,XE=0,XF=0, FOR B XB=1 ELSE ALL O
mean(LungCap[catheight=="a"])
mean(LungCap[catheight=="b"])
mean(LungCap[catheight=="c"])
mean(LungCap[catheight=="d"])
mean(LungCap[catheight=="e"])
mean(LungCap[catheight=="f"])

# lets go ahead and fit a regression model
mod<-lm(LungCap~catheight)
summary(mod)
# we get output as intercept +aXB+aXC+aXD+aXE+aXF
#where a is constant and has value different
# to calculate for anyone with respect to a 
# intercept+X(which alphabet you want,XB)