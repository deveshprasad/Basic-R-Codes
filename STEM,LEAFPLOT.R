#stem and leaf plots are used for summarizing the distribution of numeric variable and most appropriate for smaller datasets
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
?stem
femalelungcap<-LungCap[Gender=="female"]
stem(femalelungcap)
# the decimal point is at |
#smallest is first value 0.5(approx)
#largest is last value 13.1(approx)
#we can use scale operation to divide 1 into 1-1.5 & 1.5-2
#scale=2
stem(femalelungcap,scale = 2)
