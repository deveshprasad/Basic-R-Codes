lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
# MULTIPLE LINEAR REGRESSION IS USED FOR MODELLING RELATIONSHIP BTW A NUMERIC OUTCOME OR DEPENDENT VARIABLE(Y) AND MULTI EXPLAINATORY OR INDEPENDENT VARIABLE X
?lm
# fit a model age and height as X variables
model1<-lm(LungCap~Age+Height)
summary(model1)
#multiple r squared shows % of variation in lungcapacity explained by age and height
#calculate pearson corr
cor(Age,Height,method = "pearson")
# high correlation shows these are somehow bounded together
#conf.int level cfreation
confint(model1,conf.level=0.95)
# fitting a model using all x variables
model2<-lm(LungCap~Age+Height+Caesarean+Gender+Smoke)
summary(model2)
#chech regression diagnostic plots for this model
plot(model2)
#taking a look at the plot the relationship btw age , height , lung capacity, is approximately linear the variation looks constant
#lungcapacity given age and height is approximately normal