#if
if(finance$Product[1]=="DEVESH"){finance$Product[1]<-"GUDDU"}


#if-else
if(finance$Country[1]=="Germany"){
  print("thank you")
}else{
  print("FUCK OFF")
}

#switch
switch (as.character(finance$Country[1]),
        'Germany'=finance$`Manufacturing Price`[1]*100,
        'Canada'=finance$`Manufacturing Price`[1]*500
)
        

#LOOPS

#FOR
count=0
for(i in 1:nrow(finance)) {
  if (finance$Product[i]=="Montana"){
    count=count+1
  }
  
}


#WHILE
count=0
i=1
while(i<=nrow(finance)) {
  if (finance$Product[i]=="Montana"){
    count=count+1
  }
  i=i+1
}
  
  
