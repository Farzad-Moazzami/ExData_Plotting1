rm(list=ls())
setwd("C:/Users/Farzad/Dropbox/Data Science Toolbox/Course 4/Week1/ExData_Plotting1")
library(lubridate)
D = read.csv("household_power_consumption.txt", sep=";",na.strings = "?", colClasses = c("factor","factor","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
D = D[D$Date =="1/2/2007"|D$Date =="2/2/2007",]
D$DT = strptime(paste(D$Date, D$Time), format="%d/%m/%Y %H:%M:%S")
png("Plot2.png", width = 480, height = 480, units = "px")
plot(D$DT,Global_active_power,type = "l", ylab = "Global Active Power(kilowatts)",xlab = "" )
dev.off()