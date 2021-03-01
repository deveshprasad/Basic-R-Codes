#SCATTERPLOTS ARE APPROPRIATE FOR EXAMING RELATIONSHIP BTW 2 NUMERIC VARIABLE

lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
#we will explore relationship btw height and age
#correlation is required
#cor(xaxis,yaxis)
cor(Age,Height)
plot(Age,Height)
plot(Age,Height,main="SCATTERPLOT",xlab = "AGE",ylab = "HEIGHT",las=1,xlim=c(0,25))
#cex is used to change the size of plotting character
plot(Age,Height,main="SCATTERPLOT",xlab = "AGE",ylab = "HEIGHT",las=1,xlim=c(0,25),cex=2)
#to change the plotting character use pch
plot(Age,Height,main="SCATTERPLOT",xlab = "AGE",ylab = "HEIGHT",las=1,xlim=c(0,25),pch=2,col=2)
#to use linear regression
abline(lm(Height~Age),col=2)
#line can also be added using
lines(smooth.spline(Age,Height))
#lty to change line type lwd to change line width
lines(smooth.spline(Age,Height),lty=2,lwd=5)
