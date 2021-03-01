FUNCTIONS
#$ TO GET COLUMN
#MEAN(TABLE$COLUMN)
#mean(age[gender=="male"]) gives ,mean of age of male 
#NAMES(TABLE)
#GIVES COLUMN HEADS
#TABLE$CLOUMN GIVES ALL THE COLUMN OBSERVATIONS
#head(table,times)
#tail()
#detach(table)
#column
#column not found
#attach(table)
#class(column)
#gives type of the column
#IF CLASS GIVES FACTORS THEN WE CAN USE LEVELS(COLUMN)IT GIVES THE TWO FACTORS LIKE "M","F"
#sumary function gives you mean median mode min max quartiles for numeric data and for factors gives us datacount
#HOW TO CONVERT NUMERIC TO FACTOR
X<-C(1,0,1,1,0,1,1,0,0,0)
#RIGHT NOW ITS  CLASS IS NUMERIC TO CONVERT TO FACTOR
#X<-AS.FACTOR(X)
#CLASS(X)=FACTOR
#SUMMARY GIVES DATACOUNT
#dim(tables)
#gives rows and column numbers
#length(column)-gives the count of observations
#columnname[1:5]gives 1:5 data of that table
#tablename[row,column]for sorting can be,2:5,c(2,5,7)
#femdata<-table[column=="value",]
#, to include all columns
#dim(femdata) givs you the row and columns
#maleover15<-table[gender="male" & age>15]
#EXAMPLE FOR LOGICAL OPERATOR AND ITS CONVERSION
#TEMP<-AGE>15
#TEMP[1:5]
#YOU WILL GET OUTPUT AS TRUE FAALSE
#TO CONERT IT TO NUMERIC
#TEMP2<-AS.NUMERIC(AGE>15)
#TEMP2[1:5]
#OUTPUT WILL BE AS 0(FALSE) 1(TRUE)
#TO ADD  A NEW COLUMN TO TABLE
#FEMSMOKE<-GENDER=="FEMALE"& SMOKE=="YES"
#FEMSMOKE[1:5]
#OUTPUT WILL BE AS TRUE OR FALSE
#TO COMBINNE NEW COLUMN TO TABLE USE cbind
#NEWTABLE<-cbind(table,column)
#new column will be as true or false
#rm(tablename) to remove table or to delete table