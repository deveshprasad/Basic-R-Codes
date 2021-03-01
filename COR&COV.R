#PEARSON CORRELATION IS A PARAMETERIC MEASURE OF LINEAR ASSOCIATION BTW TWO NUMERIC VARIABLE
#SPEARMAN CORRELATION IS A NON PARAMETRIC MEASURE OF THE MONOTONIC ASSOCIATION BTW 2 NUMERIC VARIABLE
#KENDALL RANK CORR IS NON PARAMETIC MEASURE OF ASSOCIATION BASED ON CONCORDANCE OR DISCORDANCE OF X-Y PAIRS
lungcapdata<-read.table(file.choose(),sep = '\t',header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
plot(Age,LungCap)
cor(Age,LungCap)# there order doesnt matter default cor=pearson for others use method
cor(Age,LungCap,method = "spearman")
cor(Age,LungCap,method="kendall")
#CORTEST  COMMAND
cor.test(Age,LungCap)#test statistics and p value with  estimated correlation
cor.test(Age,LungCap,method = "spearman")
#warning will be displayed as not return non parametric confidence interval for correlation
#warning is because dataset contain same ages which can be resolved using exact=F
cor.test(Age,LungCap,method = "spearman",exact=F)
#we can use alt arguement to change hypothesis to greator than zero
#conf.level to change the confidence level we are using
cor.test(Age,LungCap,conf.level = 0.99,alt="greator")
#COVARIANCE
cov(Age,LungCap)
#pairs arguement to produce all possible pairs
pairs(lungcapdata)
#first three are numerical others are categoricals
pairs(lungcapdata[,1:3])
cor(lungcapdata)# will give error because of categorical values
#we can select numeric ones
#TO PRODUCE COR & COV MATRIX
#METHOD CAN BE USED TO FIND THE TYPE YOU WANT SPEARMAN OR KENDALL
cor(lungcapdata[,1:3])
# we see corr between the three
cov(lungcapdata[,1:3])
