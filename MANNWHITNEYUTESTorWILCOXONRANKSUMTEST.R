#THIS IS A NON PARAMETRIC METHOD APPROPRIATE FOR EXAMINING THE DIFFERENCE IN MEDIANS FOR 2 INDEPENDENT POPULATION
#IT IS A WAY OF EXAMINING THE RELATIONSHIP BTW A NUMERIC OUTCOME VARIABLE Y AND A CATEGORICAL EXPLANATORY VARIABLE X WITH 2 LEVELS WHEN GROUPS ARE INDEPENDENT
lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
?wilcox.test
#grahs is helpful for lungcapacity and smoking
boxplot(LungCap~Smoke)
#mo that is the median  lungcapacity of smokers is equal to that of non smokers
#two sided test
wilcox.test(LungCap~Smoke,mu=0,alt="two.sided",conf.int=T,conf.level=0.95,paired=F,exact=T,correct=T)
#these above are all default except for conf.int=T as it doesnot return confidence interval unless asked
#conf.int=T to have a non parametric confidence interval
#paired=F for independent 
#exact=T to have exact pvalue
#correct=T to use a continuity correction
