#CONDUCTING ONE SMPLE T TEST AND CONSTRUCTING ONE SAMPLE CONFIDENCE INTERVAL FOR THE MEAN
#ONE SAMPLE T-TEST  AND CONFIDENCE INTERVAL ARE PARAMETRIC METHODS APPROPRIATE FOR EXAMINING A SINGLE NUMERIC VARIABLE
lungcapdata<-read.table(file.choose(),header = T,sep = '\t')
attach(lungcapdata)
?t.test
#WE WILL EXAMINE THE VARIABLE LUNG CAPACITY
#suppose we want to test the null hypothesis that the mean is less than 8
#we would like to 95% one sided confidence
#mu = 8  means our null hypotesis is that the mean is 8
t.test(LungCap,mu=8,conf.level = 0.95,alt="greater")#one sided argument alter=less
#output
#t=test statistic
#pvalue
#95% conf. interval running from -inf to 8.02
#sample mean is also returned 
#conf is fine and alt too
# for two sided set alt="two.sided" and this is default in R 
TABLE1<-t.test(LungCap,mu=8,conf.level = 0.95,alt="greater")
TABLE1
#attributes command allows to see what attributes are stored in the object
#anyone attribute can be extracted using dollar
attributes(TABLE1)
TABLE1$alternative