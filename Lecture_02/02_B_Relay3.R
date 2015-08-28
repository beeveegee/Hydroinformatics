##BeeVeeGee version of Relay 3
##Comments from BeeVeeGee

#Relay 3
#By Carley Hansen created for Hydroinformatics at the U of U

#Create the following vectors and set the values of variables "vectora", "vectorb", and "vectorc" equal to: 
#a) 75 random whole numbers between 0-500
vectora<-sample(0:500,75)

## sample(Beginning of range:end of range,# of random integers desired)
## runif() will gather random sample of decimal- structures: runif(75,0,500)

#b) the first three letters of the alphabet. Hint: use the c() command
vectorb<-c('a','b','c')
## c() stands for combine, it will put in variables under one vector


#c) vector "a" multiplied by 5
vectorc<- vectora*5

## basic algebraic expression

#Find the max, min, and mean of vector "c"
summary(vectorc)

## note: max(vectorc), min(vectorc), mean(vectorc) will find the information individually
## summary will group the information together

#Plot vector "a" versus vector "c", and make the line red with "o" markers

plot(vectora,vectorc,type="o",col="red")
## plot of vectora vs vectorc , type="o" means the data will be plotted with points and lines (a point for each data point and a line connecting the points)

#Label the plot with the title equal to the second element of vectorb
title(main='b')
## simple title set to the string in the quotations
