#HISTOGRAM
#hist(x, breaks = "Sturges", freq = NULL, probability = !freq,
 #     xlim = range(breaks), ylim = NULL, col = NULL, angle = 45,
  #    include.lowest = TRUE, right = TRUE, density = NULL, 
   #   main = NULL, xlab = xname, ylab, border = NULL,  
    #  axes = TRUE, plot = TRUE, labels = FALSE, 
     # nclass = NULL, warn.unused = TRUE,..)

vtr<-c(2,4,1,6,9,7)
names<-c('a','b','c','d','e')
cols = c("red", "orange", "grey", "white", "black")
hist(vtr,col = c("skyblue", "chocolate2"),border="red",main = "HEADING",
     xlab = "HORIZONTAL",
     ylab = "VERTICAL",density = 80,angle = 90,las = 0,axes = TRUE,
     ann = TRUE,
     labels = TRUE,xlim = c(0, 10),
     ylim = c(0, 10)
)
#to create that naming box where cex=size
legend("topright", c("a","b","c",
                    "d", "e"), 
       cex = 1, fill = cols)
lines(vtr, lwd = 4, col = "red")

#NOW TO OPEN HISTOGRAM FROM A ALREADY CREATED TABLE
lungcapdata<-read.table(file.choose(),header=T,sep = "\t")
lungcapdata     #AUTOMATIC HEADING APPEARS
?hist
#attach is required first to create graphs of individual columns
attach(lungcapdata)
hist(Lungcap)
#TO USE PROBABILITY RATHER THAN FREQUENCY DENSITY
hist(LungCap,freq = F)
hist(LungCap,probability = T)#to draw on basis of probability and not frequncy
#TO SET Y LIMITS
hist(LungCap,probability = T,ylim = c(0,0.2))
#breaks is used add the desired no of breaks in the histogram
hist(LungCap,probability = T,ylim = c(0,0.2),breaks=7)
hist(LungCap,probability = T,ylim = c(0,0.2),breaks=14)
# TO ADD DESIRED NO OF BREAKS YOU CAN USE SEQ ALSO
hist(LungCap,probability = T,ylim = c(0,0.2),breaks=c(0,2,4,6,8,10,12,14,16))
hist(LungCap,probability = T,ylim = c(0,0.2),breaks=seq(0,16,2))
#TO ADD LINNES TO THE  HISTOGRAM
lines(density(LungCap))
#TO CHANGE COLOR AND WIDTH OF LINE
lines(density(LungCap),col=4,lwd=10)
