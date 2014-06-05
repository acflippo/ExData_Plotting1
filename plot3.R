# Exploratory Data - Project 1
# Annie Flippo

## Plot 3

# Read and format data for plotting
source("./ExData_project1.R")

# Multiple Line Plot with Legend
png(filename="plot3.png", width=480, height=480, units="px")

plot(tidyData$dayTime, tidyData$Sub_metering_1, type='n', xlab='', ylab='Energy sub metering')
lines(tidyData$dayTime, tidyData$Sub_metering_1, col='black')
lines(tidyData$dayTime, tidyData$Sub_metering_2, col='red')
lines(tidyData$dayTime, tidyData$Sub_metering_3, col='blue')
legend('topright', lwd=1, col=c('black','red','blue'), 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))

dev.off()
