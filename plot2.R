# Exploratory Data - Project 1
# Annie Flippo

## Plot 2

# Read and format data for plotting
source("./ExData_project1.R")

# Line Plot
png(filename="plot2.png", width=480, height=480, units="px")

plot(tidyData$dayTime, tidyData$Global_active_power, pch=".", 
     xlab="", ylab="Global Active Power (kilowatts)")

lines(tidyData$dayTime, tidyData$Global_active_power)
dev.off()