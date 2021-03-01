#THESE ARE PARAMETRIC METHOD APPROPRIATE FOR EXAMINING THE DIFFERENCE IN MEAN FOR TWO POPULATIONS
#THESE ARE WAY OF EXAMINING RELATIONSHIP BTW A NUMERIC OUTCOME VARIABLE Y AND CATEGORICAL EXPLAINATORY VARIABLE(X,WITH 2 LEVELS)
lungcapdata<-read.table(file.choose(),header = T,sep = '\t')
attach(lungcapdata)
#we will explore relationship btw smoking and lung capacity
?t.test
#before conducting test it is useful to make a plot
boxplot(LungCap~Smoke)
#ho=mean lung cap of smokers = non smokers
# thenn if mean is equal ho=0(mean difference)
#two sided test
#assume non equal variance
t.test(LungCap~Smoke,mu=0,alt="two.sided",conf=0.95,var.eq=F,paired=F)
#paired=F means two groups are not dependent and indepenndent
#the above values are default values yo can change

#same can be done with
t.test(LungCap[Smoke=="no"],LungCap[Smoke=="yes"])
#to decide var.eq we can see boxplot 
#WE CAN CALCULATE ACTUAL VARIANCE
#we can use levenes test
#installl car package
leveneTest(LungCap~Smoke)
#from this we can assume variance is not equal
#with small p value we should reject null hypothesis