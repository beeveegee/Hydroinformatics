#Relay 4
#Created by Carley Hansen for Hydroinformatics at the U of U

#A discharge record needs to be corrected because of an instrument malfunction. On every 7th month (starting with the first data point), 
#the gauge incorrectly reported 20% lower than the true value. Hint: use seq() and a for loop.
#Plot the original data and the corrected data on the same plot versus time, with different colors and BONUS POINTS:provide a legend. 

#Load the data
#datatable<-read.csv('C://Users/Carly/Desktop/JordanRiver_discharge.csv',header=T)
datatable<-read.csv("C://Users/Burian/Data/Teaching/Hydroinformatics/1_Classes/0_1_RIntro/JordanRiver_Discharge.csv",header=TRUE)


