#GROUPED  OR CLUSTERED BAR CHARTS
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
table(Smoke,Gender)
table1<-table(Smoke,Gender)
table1
#we can create cluster bar charts of same type like factor values of smoker and gender
barplot(table1)
#to change into clustered use beside arguments
barplot(table1,beside = T)
#to add legend 
barplot(table1,beside=T,legend.text = T)
#you can write text in legend
barplot(table1,beside=T,legend.text =c("NON SMOKER","SMOKER") ,col = c(5,6),las=T)
#TO PRODUCE MOSAIC CHART
mosaicplot(table1,col=c(1,2))