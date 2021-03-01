lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
catheight<-cut(Height,breaks = c(0,50,55,60,65,70,100),labels=c("a","b","c","d","e","f"))
catheight[1:10]
class(catheight)
model2<-lm(LungCap~Age+catheight)
summary(model2)
plot(Age[catheight=="a"],LungCap[catheight=="a"],col=2,ylim=c(0,20),xlim=c(0,20), main=" lungcap vs age, catheight",xlab = "age",ylab = "lungcap")
# now add catheight b col=3 green
points(Age[catheight=="b"],LungCap[catheight=="b"],col=3)
#color=red
points(Age[catheight=="c"],LungCap[catheight=="c"],col=4)
#color=light blue
points(Age[catheight=="d"],LungCap[catheight=="d"],col=5)
#color=purple
points(Age[catheight=="e"],LungCap[catheight=="e"],col=6)
#color=yellow
points(Age[catheight=="f"],LungCap[catheight=="f"],col=7)
legend(0,15.5,legend =c("a","b","c","d","e","f"),col=2:7,pch=1,cex=2)
# now addding the regression lines
# for catheight A , using color=2
abline(a=0.98,b=0.20,col=2,lwd=3)
abline(a=2.46,b=0.20,col=3,lwd=3)
abline(a=3.67,b=0.20,col=4,lwd=3)
abline(a=4.92,b=0.20,col=5,lwd=3)
abline(a=5.99,b=0.20,col=6,lwd=3)
abline(a=7.92,b=0.20,col=7,lwd=3)