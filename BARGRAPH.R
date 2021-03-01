#BARCHART
vtr<-c(10,20,30,40,50)
cols = c("red", "orange", "grey", "white", "black")
barplot(vtr,names,col=cols,border="red",horiz = TRUE,main = "HEADING",
        xlab = "HORIZONTAL",
        ylab = "VERTICAL",density = 80,angle = 45)
#to create that naming box where cex=size
legend("topleft", c("a","b","c",
                       "d", "e"), 
       cex = 1, fill = cols)




# Create R barplot using Matrix Example

vec <- c(4, 9, 11, 12, 17, 6, 9, 23, 2, 15, 1, 8 ) 
values <-  matrix(vec, nrow = 3, ncol = 4)
values
barplot(values, col = c("brown", "chocolate", "yellow"))

#USING DATA TO CREATE BARGRAPH
lungcapdata<-read.table(file.choose(),header=T,sep = "\t")
lungcapdata
attach(lungcapdata)
dim(lungcapdata)
names(lungcapdata)
class(gender)
table(Gender)
count<-table(Gender)
count
table(Gender)/725
percent<-table(Gender)/725
percent
barplot(count)
barplot(percent,names.arg = c("FEMALE","MALE"),xlab = "GENDER",ylab = "%")


#barplot(height, width = 1, space = NULL, name.args = NULL, 
#legend.text = NULL, beside = FALSE, horiz = FALSE, 
#density = NULL, angle = 45, col = NULL, border = par("fg"), 
#main = NULL, sub = NULL, xlab = NULL, ylab = NULL, 
#xlim = NULL, ylim = NULL, xpd = TRUE, log = "", 
#axes = TRUE, axisnames = TRUE, cex.axis = par("cex.axis"), 
#cex.names = par("cex.axis"), inside = TRUE, plot = TRUE, 
#axis.lty = 0, offset = 0, add = FALSE, args.legend = NULL)