lungcapdata<-read.table(file.choose(),sep = "\t",header = T)
lungcapdata
attach(lungcapdata)
names(lungcapdata)
# YOU MAY WANT TO MAKE SOME CROSS TABULATIONS FOR A VARIABLE FITTING FOR REGRESSION MODEL WHEN LINNEARITY ASSUMPTION IS NOT VALID FOR THE VARIABLE
class(Height)
Height[1:10]
# we will convert using cut command
?cut
# we will cfreate categories for height
catheight<-cut(Height,breaks = c(0,55,60,65,70,75,100),labels = c("a","b","c","d","e","f"))
# the intervals are left open and right closed = border observation goes into the left interval
#for example= A(0,50]
catheight[1:10]
# if no levels then the brackets will appear
# if you want 60 in 60-65 category use right=F
#breaks can be used as 1,3,4,55...