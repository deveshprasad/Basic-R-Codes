#VARIOUS STATS FUNCTIONS CAN BE PERFORMED USING R
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
summary(LungCap)
table(Smoke)
length(Smoke)
table(Smoke)/length(Smoke)
table(Smoke,Gender)
#NOW STATS
mean(LungCap)
#trim fuction trim the dataset from top and bottom(0.10 for 10 percent)
mean(LungCap,trim=10)
median(LungCap)
var(LungCap)
sd(LungCap)
sqrt(var(LungCap))
sd(LungCap)^2
min(LungCap)
max(LungCap)
range(LungCap)
#percentiles?quantiles
#quantile to find quartiles you can choose the ones you need
#probs rguement to let r know which specific quartile we are talking about
quantile(LungCap,probs = 0.90)
sum(LungCap)
sum(LungCap)/length(LungCap)
#PEARSONS CORRELATION COR
cor(Age,LungCap)
#SPEARMANS CORRELATION USE METHOD ARGUEMENT
cor(Age,LungCap,method = "spearman")
#for covariance
var(LungCap,Age)
cov(LungCap,Age)
#SUMMARY CAN BE USED FOR SPECIFIC TABLES
summary(LungCap)
summary(Smoke)
#SUMMARY CAN BE USED ALSO TO FIND THE SUMMARY OF COMPLETE DATASET
summary(lungcapdata)