#PIE CHART
vtr<-c(10,20,30,40,50)
names<-c('a','b','c','d','e')
cols = c("red", "orange", "grey", "white", "black")
pie(vtr,names,col=cols,border = "red", lty = 10,edges = 200, radius = 1, density = 100, angle = 45,main = "HEADING",clockwise = TRUE)
#to create that naming box where cex=size
legend("bottomleft", c("a","b","c",
                     "d", "e"), 
       cex = 1, fill = cols)

##USING DATA TO CREATE PIECHART
lungcapdata<-read.table(file.choose(),header=T,sep = "\t")
lungcapdata
attach(lungcapdata)
dim(lungcapdata)
names(lungcapdata)
class(Gender)
table(Gender)
count<-table(Gender)
count
table(Gender)/725
percent<-table(Gender)/725
percent
pie(count)
box()
#for asy color use 
#col = rainbow(length(data$x))


#pie(x, labels = names(x), edges = 200, radius = 0.8, clockwise = FALSE, 
#init.angle = if(clockwise) 90 else 0, density = NULL, angle = 45, 
#col = NULL, border = NULL, lty = NULL, main = NULL, ..)
#cex=size of index
