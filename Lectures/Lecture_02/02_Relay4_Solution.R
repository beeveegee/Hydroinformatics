#The discharge record needs to be corrected because of an instrument malfunction. On every 7th month (starting with the first day), 
#the gauge incorrectly reported 20% lower than the true value. Hint: use seq() and a for loop.
#Plot the original data and the corrected data on the same plot versus time, with different colors and BONUS POINTS:provide a legend. 

#Load the data
#datatable<-read.csv('C://Users/Carly/Desktop/JordanRiver_discharge.csv',header=T)
datatable<-read.csv("C://Users/Burian/Data/Teaching/Hydroinformatics/1_Classes/0_1_RIntro/JordanRiver_Discharge.csv",header=TRUE)

discharge<-datatable$discharge_cfs

newdischarge<-discharge

for(i in seq(1, length(discharge), 7)){
  newdischarge[i]<-discharge[i]*.8
}

time<-seq(1,length(discharge),1)

plot(time,discharge,type="l",col="blue")
lines(time,newdischarge,col="red")
legend(0,300,c("original discharge","corrected discharge"),col=c("blue","red"),lty=1:1)

