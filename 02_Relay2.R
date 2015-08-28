#Relay 2: Debug the 4 mistakes to make the code run successfully!
#Created by Carley Hansen for Hydroinformatics at the U of U

#The purpose of this exercise is to determine
#the distribution of monthly discharge and the
#number of extreme* monthly flow events in the Jordan River
#*exceeds 95% or falls below 5%
#Show your result graphically and numerically

#Load the data from a file
#JRiver<-read.csv("C://Users/Carly/Desktop/JordanRiver_discharge.csv",header=TRUE)
JRiver<-read.csv("C://Users/Burian/Data/Teaching/Hydroinformatics/1_Classes/0_1_RIntro/JordanRiver_Discharge.csv",header=TRUE)

#Set variables
discharge<-JRiver$Discharge_cfs
year<-JRiver$year
month<-JRiver$month

#Find distribution
summarystats<-summary(discharge)
print(c(Summarystats))

#Plot histogram
hist(discharge)

#Determine the 95th and 5th percentiles
top_percent<-quantile(discharge,.95)
bottom_percent<-quantile(discharge,.05)

#Create a counter
counter<-0

#Compare the values
for (i in discharge){
  if(i>top_percent|i<bottom_percent){{
  counter<-counter+1
}}

#Print the result
startyear<-min(year)
endyear<-max(year)
sprintf("Number of extreme monthly discharges in the Jordan River from %d to %d: %d",startyear,endyear,counter)

#Create a plot - do this after the relay!!
plot(year,discharge,ann=FALSE,xlab="discharge",xlab="time")
top_bound<-rep(top_percent,length(year))
bottom_bound<-rep(bottom_percent,length(year))
lines(year,top_bound,type="l",col="red")
lines(year,bottom_bound,type="l",col="red")


