# THIS IS A NON PARAMETRIC METHOD APPROPRIATE FOR EXAMINING THE MEDIAN DIIFERENCE IN OBSERVATIONS FOR 2 POPULATIONS THAT ARE PAIRED OR DEPENDENT ON ONE ANOTHER
bloodpressure=read.table(file.choose(),sep="\t", header = T)
bloodpressure
attach(bloodpressure)
?wilcox.test
boxplot(Before,After)
#we can see bp is lower after treatment
#h0=median change in bp is 0
#two sided arguement
wilcox.test(Before,After,mu=0,alt="two.sided",conf.int = T,conf.level = 0.99,pired=T,correct = T)
#to remove warning mssg change  the exact value to false
#also correct=F to remove warning mssg
#median diff=7.5