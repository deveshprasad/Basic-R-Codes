#THEYCAN BE USED TO FIND PVALUES OR CRITICAL VALUES FOR CONSTRUCTING CONFIDENCE INTERVALS
#t~tdf=25,mean=0,sd=1(df=degrees of freedom)
?pt
#test statistics=2.df=25
#one sided pvalue
#p(t>2.3)
pt(q=2.3,df=25,lower.tail = F)# false beacuse asking r for upper tail probability of area
#for both tail to be included you have two methods
#for two sided pvalue
pt(q=2.3,df=25,lower.tail = F)+pt(q=-2.3,df=25,lower.tail = T)
#negativ on side where true to get lower pvalue 
pt(q=2.3,df=25,lower.tail = F)*2
# finding t for 95% confidence
# value of t with 2.5% in each tail
#WE USE QT TO FIND QUANTILE FOR T DISTRIBUTION
#SINCE2.5%=0.025 =P FOR QT
qt(p=0.025,df=25,lower.tail = T)#asking value of t in the lower tail