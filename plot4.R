# Exploratory Data - Project 1
# Annie Flippo

## Plot 4

# Read and format data for plotting
source("./ExData_project1.R")

# 2 x 2 grid of plots
png(filename="plot4.png", width=480, height=480, units="px")
par(mfrow = c (2,2))

with(tidyData, {
        # Plot at (1,1) position
        plot(tidyData$dayTime, tidyData$Global_active_power,  
             xlab="", ylab="Global Active Power", type="n")
        lines(tidyData$dayTime, tidyData$Global_active_power)
        
        # Plot at (1,2) position
        plot(tidyData$dayTime, tidyData$Voltage, xlab="datetime", ylab="Voltage", type="n")
        lines(tidyData$dayTime, tidyData$Voltage)
        
        # Plot at (2,1) position
        plot(tidyData$dayTime, tidyData$Sub_metering_1, xlab='', ylab="Energy sub metering", type="n")
        lines(tidyData$dayTime, tidyData$Sub_metering_1, col="black")
        lines(tidyData$dayTime, tidyData$Sub_metering_2, col="red")
        lines(tidyData$dayTime, tidyData$Sub_metering_3, col="blue")
        legend("topright", lwd=1, col=c("black","red","blue"), bty="n",
               legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        
        # Plot at (2,2) position
        plot(tidyData$dayTime, tidyData$Global_reactive_power, 
             xlab="datetime", ylab="Global_reactive_power", type="n")
        lines(tidyData$dayTime, tidyData$Global_reactive_power)

})

dev.off()
