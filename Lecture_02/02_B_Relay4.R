## My version of Relay 4

#Relay 4
#Created by Carley Hansen for Hydroinformatics at the U of U

##Datafile required is: 01_JordanRiver.csv

#A discharge record needs to be corrected because of an instrument malfunction. On every 7th month (starting with the first data point), 
#the gauge incorrectly reported 20% lower than the true value. Hint: use seq() and a for loop.
#Plot the original data and the corrected data on the same plot versus time, with different colors and BONUS POINTS:provide a legend. 

#Load the data
#datatable<-read.csv('C://Users/Carly/Desktop/JordanRiver_discharge.csv',header=T)
datatable<-read.csv('01_JordanRiver.csv',header=TRUE)

##Set Variables to be used
month<-datatable$month
original_discharge<-datatable$discharge_cfs
new_discharge<-NULL

for (i in seq(month)){
  if (month[i] == 7) {
    new_discharge[i]<-(original_discharge[i]*0.2)+original_discharge[i]
  }
  else {
    new_discharge[i]<-original_discharge[i]
  }
}

xrange<-range(seq(month))
yrange<-range(datatable$discharge_cfs)

plot(xrange,yrange,type="n",xlab="Months",ylab="Discharge (cfs)")
lines(original_discharge, col="blue",lwd=2.5)
lines(new_discharge, col="red")
title(main="Discharge of the Jordan River")
legend(500,47,c("Original Discharge","Correct Discharge"), lty=c(1,1),lwd=c(1,1), col=c("blue","red"))

##plot information from: http://www.r-bloggers.com/adding-a-legend-to-a-plot/