#THIS IS FOR CSV FILE (EXCEL DATA SAVED AS CSV FILE)
#if first row doesnot contain variable names set header=false
#first save excel file as csv
data1<-read.csv(file.choose(),header = T,sep=",")
#a window will open to select your file
# u can use sep=","

#THIS IS FOR TXT FILES
#first save as txt file
#use following code
data2<-read.delim(file.choose(),header = T,sep=",")
#window will open
data2#print the table


#YOU CAN USE FILE.CHOOSE COMMAND
data3<-read.table(file.choose(),header=T,sep = "\t")
#WINDOW WILL OPEN YOU CAN CHOOSE THE TXT FILE

#YOU CAN USE IMPORT DATASET OPTION WHERE YOU CAN SKIP ADD RANGE SPECIAL CHARACTER FOR NULLS MAX ROWS
#COPY THE URL TO OPEN THE MAIN FILE AGAIN


#MOST FUCKED WAY T0 USE FILE LOCATION AND THEN CHANGING SLASHES
data4<-read.table(file="FILELOCATION WITH NAME.TXT/CSV",header = TRUE,sep = "\t")