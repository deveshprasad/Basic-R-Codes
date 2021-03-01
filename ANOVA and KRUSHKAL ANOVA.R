#CONDUCTING ONE WAY ANALYSIS OF VARIANCE(ANOVA) AND KRUSHKAL WALLIS ANOVA
#ANOVA IS A PARAMETRIC METHOD OF COMPARING MEAN for 2 or more independent populations
dietdata<-read.table(file.choose(),header=T,sep="\t")
dietdata
attach(dietdata)
levels(Diet)
#for analysis of variance use aov command
?aov
boxplot(WeightLoss~Diet)
#HO= mean weight loss is same for all diets
#we can conduct analysis of variance using aov command
ANOVA1<-aov(WeightLoss~Diet)
ANOVA1
summary(ANOVA1)
#attributes to see all that stored in anova command
attributes(ANOVA1)
#WE CAN USE MULTIPLE COMPARISONS TO  HELP US DECIDE WHICH MEAN OR DIET MAY DIFFER FROM OTHERS
#tukeyHSD command to conduct all possible pair wise comparisons
TukeyHSD(ANOVA1)
#for visual display
plot(TukeyHSD(ANOVA1))
# helps us identify which means or diet differs from one another

#kruskal wallis is one way analysis of variance is a non parametric equivalent to the one way analysis of variance
?kruskal.test
kruskal.test(WeightLoss~Diet)