#THESE ARE ALL MEASURES OF THE DIRECTION AND THE STRENGTH OF ASSOCIATION BETWEEN TWO CATEGORICAL VARIABLES
#THESE ARE ALL MEASURES OF THE DIRECTION AND THE STRENGTH OF ASSOCIATION BETWEEN TWO CATEGORICAL VARIABLES
lungcapdata<-read.table(file.choose(),sep='\t',header = T)
lungcapdata
attach(lungcapdata)
class(Smoke)
class(Gender)
TAB<-table(Gender,Smoke)
TAB
#epiR is instaled first
install.packages("epiR")
library(epiR)
help(package="epiR")
#click on epi.2by2
#we can calculate all the three risk using these three commands 
#method=chort.count if data came from a cohort study OR can be case control study(but relative risk will not be returned)
epi.2by2(TAB,method = "cohort.count",conf.level =0.95)
#0.71 odd ratio tells that odds of  female not smoking is 0.71 times odds of a male not smoking
# its reciprocal shows odd of a male not smoking are 1.4% times the odds of a female not smoking
TAB
TAB2<-matrix(c(44,314,33,334),nrow=2,byrow=2)
TAB2
#reversing the order of columns
TAB3<-cbind(TAB[,2],TAB[,1])
TAB3
#TO ADD COLUMN NAMES 
colnames(TAB3)<-c("yes","no")
TAB3
epi.2by2(TAB3)
#odds of a female smoker are 1.42 times odds of a male smoker