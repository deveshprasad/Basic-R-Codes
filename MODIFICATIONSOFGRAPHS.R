lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
plot(Age,Height)
#NOW MODIFICATIONS
plot(Age,Height,cex=0.5)#cex decides side of pch(the characterseen in graph)
#cex
plot(Age,Height,main = "PLOT",cex=0.5,cex.main=5,cex.lab=3,cex.axis=2)
#cex for size o the pch
#cexaxis for size of axis charcter
#cexlabel for x and y axis headings
#CHANGING THE FONT USING FONT ARGUEMENT
#FONT.MAIN FOR CHANGING FONT OF MAIN TITLE
#FONT.AXIS
#FONT.LAB
#2 for bold
#3 FOR ITALIC FONT
# for italic bold
#USING COL ARGUEMENT FOR CHANGING COLOR SAME WITH MAIN,LAB,AXIS
#PCH = PLOTTING CHARACTER
#PCH="d" WILL GIVE D IN THE PATTERN
plot(Age,Height,main = "PLOT",cex=0.5,cex.main=5,cex.lab=3,cex.axis=2,font.main=2,font.lab=4,font.axis=3,col.main=2,col.lab=3,col.axis=4)

#IDENTIFYING GENDERS USING PLOTTING CHARACTERS ON SAME PLOT
plot(Age[Gender=="male"],Height[Gender=="male"],col=4,pch="M")
#for same graph use point function
points(Age[Gender=="female"],Height[Gender=="female"],col=2,pch="F")

#NOW TO PRODUCE 2 DIFFERENT PLOTS FOR MALE AND FEMALE
#for this we use the following function to produce to  1 row and 2 columns(mfrow,mfcol)
par(mfrow=c(1,2))
plot(Age[Gender=="male"],Height[Gender=="male"],col=4,pch="M")
plot(Age[Gender=="female"],Height[Gender=="female"],col=4,pch="F")

#RELABELLING AXIS OF A PLOT IN R
par(mfrow=c(1,1))
#to remove the axes use false
plot(Age,Height,axes = F)
#to add x axis
axis(1,at=c(5,10,15),labels = c("five","ten","fifteen"))
axis(2,at=c(55,60,65,75),labels = c(55,60,65,70))
#for right side of graph to put axis
axis(side=3,at=c(55,60,65,75),labels = c(55,60,65,70))
axis(side=4,at=c(5,10,15),labels = c("five","ten","fifteen"))
box()

#ADDING TEXT TO A PLOT IN R
?text
plot(Age,LungCap)
cor(Age,LungCap)
#you can modify text as follows
text(x=5,y=11,labels = "r=0.82",adj = 1,cex=2,col=2,font = 2)
#adj=0 text will start from x=5
#adj=1 text will finish at x=5 and y=11
abline(h=mean(LungCap),col=1,lwd=5)
text(x=20,y=14,labels = "MEAN LINE",adj = 1,cex=2,col=2,font = 2)
#TO ADD TEXT IN THE AXIS
mtext(text = "AXIS",side = 1,col=4,font = 3,adj = 0.25)#ADJ=1 THEN TEXT ON RIGHT SIDE ELSE LEFT


#ADDING AND CUSTOMIZING LEGENDS
plot(Age[Smoke=="no"],LungCap[Smoke=="no"],col=4,pch=16)
points(Age[Smoke=="yes"],LungCap[Smoke=="yes"],col=2,pch=17)
legend(x=5,y=13,legend = c('non smoke','smoke'),col= c(4,2),pch=c(16,17),bty ="n")
#bty=n then no box around legend
lines(smooth.spline(Age[Smoke=="no"],LungCap[Smoke=="no"]),col=4,lwd=3,lty=2)
lines(smooth.spline(Age[Smoke=="yes"],LungCap[Smoke=="yes"]),col=2,lwd=3,lty=3)
#to add line in legend remove pch and add lty(line type arguement =1)
legend(x=5,y=13,legend = c('non smoke','smoke'),col= c(4,2),lty =c(2,3),bty ="n")
#lty=2 dotted line