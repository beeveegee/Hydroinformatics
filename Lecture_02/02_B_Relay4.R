## BeeVeeGee's version of Relay 4
##Comments made by BeeVeeGee

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
##variable<-datatable$column from excel used
month<-datatable$month
original_discharge<-datatable$discharge_cfs
new_discharge<-NULL
##place holder for new_discharge

##Set up data into an array using [i]
##seq(month) lists month in an array
## for every month in the array that is equal to 7, the new discharge value will be created by adding
##the original discharge value and 20% of it to fix the "instrument malfunction"
## when it is not equal to 7, that spot in the array will be filled by the original data

for (i in seq(month)){
  if (month[i] == 7) {
    new_discharge[i]<-(original_discharge[i]*0.2)+original_discharge[i]
  }
  else {
    new_discharge[i]<-original_discharge[i]
  }
}

## Creating the plots
## ranges for the plot is configured
xrange<-range(seq(month))
yrange<-range(datatable$discharge_cfs)

##plot is set up, type "n" means the structure of the graph is set up, but no data is plotted
plot(xrange,yrange,type="n",xlab="Months",ylab="Discharge (cfs)")

##create data of lines corresponding to the data selected, lwd is the line thickness
lines(original_discharge, col="blue",lwd=2.5)
lines(new_discharge, col="red")

##creates the title of the graph
title(main="Discharge of the Jordan River")

##Creates the legend for the graph, first two numbers are the coordinates where the box is located, c("name of data","name of data")
##lty shows the type of line in the graph, lwd is the thickness of the line shown in the legend, col(c() dignifies the corresponding color
legend(500,47,c("Original Discharge","Correct Discharge"), lty=c(1,1),lwd=c(1,1), col=c("blue","red"))

##plot information from: http://www.r-bloggers.com/adding-a-legend-to-a-plot/
