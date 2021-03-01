lungcapdata<-read.table(file.choose(),header=T,sep = "\t")
lungcapdata
attach(lungcapdata)
#creating age group
agegroups<-cut(Age,breaks = c(0,13,15,17,25),labels = c("<13","14/15","16/17","18+"))
agegroups[1:5]
levels(agegroups)
boxplot(LungCap~Smoke,ylab = "LUNGCAPACITY",main="SMOKE VS LUNG")
#FOR ONLY MORE THAN 18
boxplot(LungCap[Age>=18]~Smoke[Age>=18],ylab = "LUNGCAPACITY",main="SMOKE VS LUNG FOR 18+")
#FOR 4 TYPE OF AGE GROUP WE MULTIPLY AGEGROUP WITH SMOKE SO WE GWT 8 OBSERVATION
#YOU CAN ALSO USE COLOR NAME OR COLOR NO. LIKE RED FOR SMOKER OR BLUE FOR NON SMOKER
boxplot(LungCap~Smoke*agegroups,ylab = "LUNGCAPACITY",main="SMOKE VS LUNGCAPACITY by YEARS",col=c(4,2))
box()
#to relable y axis
axis(2,at=seq(0,20,2),seq(0,20,2))
#to relable x axis
axis(1,at=c(1.5,3.5,5.5,7.5),labels = c('<13','14/15','16/17','18+'))

#NOW TO ADD LEGEND WITHIN THE AXIS RANGE
legend(x=5.5,y=4.5,legend = c("NON SMOKE","SMOKE"),col=c(4,2),cex = 1)