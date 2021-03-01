#BOXPLOT
lungcapdata<-read.table(file.choose(),header=T,sep = "\t")
lungcapdata
attach(lungcapdata)
dim(lungcapdata)
names(lungcapdata)
class(Gender)
?boxplot
boxplot(LungCap)
summary(LungCap)
#min,max,median,quartilescan be also  found using thissame as summary
quantile(LungCap,probs = c(0,0.25,0.5,0.75,1))
boxplot(LungCap,main="BOXPLOT",ylab="lung capacity", ylim=c(0,16))
#FOR TWO OR MORE
boxplot(LungCap~Gender)
#the  above can be achieved by
boxplot(LungCap[Gender=="female"],LungCap[Gender=="male"])
boxplot(LungCap~Smoke)