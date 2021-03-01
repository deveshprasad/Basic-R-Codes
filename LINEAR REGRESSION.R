#SIMPLE LINEAR REGRESSION IS USEFUL FOR EXAMINING OR MODELLING THE RELATIONSHIP BTW TWO NUMERIC VARIABLES
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
#MODEL RELATIONSHIP BTW LUNGCAPACITY AND AGE
#LUNGCAPACITY IS OUTCOME OR DEPENDENT (Y) VARIABLE
plot(Age,LungCap)
#pearsons correllation
cor(LungCap,Age)
#there is a positive ,fairly linear association btw the two
?lm
#mod<-lm(yvariable~xvariable)
mod<-lm(LungCap~Age)
summary(mod)
# output is summary of errors,
#estimate of intercept ,std error,test statistics value, null hypothesis value
# * are used to identify significant coefficient
attributes(mod)
mod$coefficients
#we will get intercept and age
#to add regression line
abline(mod,col=5,lwd=3)
#coef command to get our model coefficients
coef(mod)
#we can produce conf.interval for these coefficients
confint(mod)
#we can change level  
confint(mod,level=0.99)
summary(mod)
# we can also use anova command
anova(mod)
sqrt(2.3)# same as residual standar error



#CHECKING LINEAR REGRESSION ASSUMPTIONS
# REGRESSION LINE CAN BE TAKEN AS MEAN OF Y GIVEN X
# the standard deviations of these errors or residual is called residual standard error
#ASSUMPTIONS
#THE Y VALUES (OR ERRORS e ARE INDEPENDENT)
#Y VALUES CAN BE EXPRESSED AS A LINEAR FUNCTION OF THE X VARIABLE
#VARIATION OF OBSERVATIONS AROUND THE REGRESSION LINES IS CONSTANT(HOMOSCEDASITY)
#GIVEN X,Y VALUES ARE NORMALLY DISTRIBUTED
# R HAS INBUILT DIAGNOSTIC PLOTS,4 IN TOTAL
# DO THIS THEN PRESS ENTER TO SEE ALL 4 PLOTS
plot(mod) 
# you can hit enter 3 times to see
# THE FIRST PLOT IS RESIDUAL PLOT
#HERE THE X AXIS IS PREDICTED OR FITTED AND ON Y THE RESIDUALS OR ERRORS
#IF THE LINEARITY ASSUMPTION IS MET THE RED LINE SHOULD BE VERY FLAT
# IF VARIATION IS CONSTANT WE SHOULD SE NO PATTERN  THESE POINTS SHOULD LOOK LIKE A CLOUD OF POINTS
#SECOND PLOT IS QUANTILE QUANTILE  PLOT/QQ PLOT
#XAXIS IS ORDERED,OBSERVED,STANDARDISED RESIDUALS XAXIS IS ORDERED THEORETICALS RESIDUALS
# THIRD AND FOURTH  PLOTS CAN HELP US TO IDENTIFY NON LINEARITIES,NON CONSTANT VARIANCE

#TO MAKE ALL 4 APPEAR ON 1 SCREEN
par(mfrow=c(2,2))
plot(mod)
# to change it to normal
par(mfrow=c(1,1))

#HOW NON CONSTANT VARIANCE WILL SHOW UP IN A RESIDUAL PLOT
#take two variable x and y