#PIE CHART
vtr<-c(10,20,30,40,50)
names<-c('a','b','c','d','e')
pie(vtr,names,col=rainbow(length(vtr)))

#BARCHART



vtr<-c(10,20,30,40,50)
barplot(vtr,col="blue",border="red",horiz = TRUE,main = "HEADING",
        xlab = "HORIZONTAL",
        ylab = "VERTICAL",density = 80)

#HISTOGRAM
vtr<-c(10,20,30,40,50)
hist(vtr)

#LINEGRAPH
#I for LINES
#P for POINT
#O for BOTH POINT AND LINES
vtr1=c(3,2,4,6,7,9,8)
plot(vtr1,type = "i")

#SCATTERPLOT
vtr1=c(3,2,4,6,7,9,8)
vtr<-c(1,1,2,3,5,6,8)
plot(vtr,vtr1)

