# CHII SQUARE TEST OF INDEPENDENCE IS A PARAMETRIC METHOD APPROPRIATE FOR TESTING INDEPENDENCE BETWEEN TWO CATEGORICAL VALUES
lungcapdata<-read.table(file.choose(),header=T,sep="\t")
lungcapdata
attach(lungcapdata)
class(Gender)
class(Smoke)
levels(Smoke)
# WE WILL EXPLORE THE RELATIONSHIP BTW GENDER AND SMOKING
?chisq.test
table(Gender)
TAB<-table(Gender,Smoke)
TAB
barplot(TAB,beside=T,legend=T)
#beside = T for clustered bar charts
chisq.test(TAB,correct = T)
#correct true to do the continuity correction
# x squared = test statistics
CHI=chisq.test(TAB,correct = T)
CHI
attributes(CHI)
CHI$expected


#FISHERS EXACT TEST IS A NON PARAMETRIC ALTERNATIVE
fisher.test(TAB)
#we can add confint and conlevel
