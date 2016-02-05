rm(list=ls())
setwd("C:/Users/Farzad/Dropbox/Data Science Toolbox/Course 4/Week1/ExData_Plotting1")
D = read.csv("household_power_consumption.txt", sep=";",na.strings = "?", colClasses = c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
D = D[D$Date =="1/2/2007"|D$Date =="2/2/2007",]
png("Plot1.png", width = 480, height = 480, units = "px")
hist(Global_active_power,col="red",main = "Global Active Power", xlab = "Global Active Power(kilowatts)" )
dev.off()