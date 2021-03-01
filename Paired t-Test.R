#THESE ARE PARAMETRIC METHODS APPROPRIATE FOR EXAMINING THE DIFFERENCE IN MEANS  FOR 2 POPULATIONS THAT ARE DEPENDENT ON ONE ANOTHER
bloodpressure=read.table(file.choose(),sep = "\t",header = T)
attach(bloodpressure)
bloodpressure[1:3,]
#WE WILL EXPLORE THE CHANGE IN BLOOD PRESSUR BEFORE TREATMENT AND AFTER
#WE CAN USE TTEST AND BOXPLOT CAN BE USED FOR OBSEERVATION
boxplot(Before,After)
#bp after treatement is lower on average
# we may want to lookk  at a plot that allows us to see data as paired or changes in the interval
# there are many ways 
# first scatterplot
plot(Before,After)
# we may add a 45 degree line with intercept 0 and slope 1
abline(a=0,b=1)
# this is a line for x equal to y or before equal to after
#if there is no change in bloodpressure points should fall  on the diagonal line and equally scattered above or below the line
# if decreased after treatement more should fall below the  line than above
# lets conduct paired t test
#ho =  mean diff between the two  pressure is different
#two sided alternative
t.test(Before,After,mu=0,alt="two.sided",paired = T,conf.level = 0.99)
#sample has mean difference of 8
#if you change before with after or interchange both then nothing will change except negative sign