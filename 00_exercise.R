#Hydroinformatics pre-class #1 assignment: get familiar with R

#can use the following command to recieve/find the data

#read.csv("GSL_Elevation.csv")

#if necessary, change the directory to find the file correctly

#instead, copying/pasting in data manually using the scan(). Typed Elevation<-scan() [Elevation is what I'm naming the variable] and pasted data on line after

Elevation<-scan()
4203.422
4201.678
4200.503
4199.718
4199.46
4198.819
4199.308
4199.953
4201.596
4202.96
4202.517
4200.876
4198.971
4197.144
4195.402
4195.65
4196.667
4196.703
4195.363
4194.89
4194.825
4196.052
4197.836
4196.106
4194.479

Year<-scan()
1990
1991
1992
1993
1994
1995
1996
1997
1998
1999
2000
2001
2002
2003
2004
2005
2006
2007
2008
2009
2010
2011
2012
2013
2014

#Plot the Elevation on the y axis and Year on the x axis
#Optional arguments include the plot type, color, and labels of the axes plot

plot(Year, Elevation, type="o", col="red", xlab="Year", ylab="Feet")

#Declare the plot title

title(main="Elevation in the Great Salt Lake in Feet above NGVD")

#Doesn't plot correctly, trying in the main window to just scan year and elevation
#indivdually and plotting it that way