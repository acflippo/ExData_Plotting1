# Exploratory Data - Project 1
# Annie Flippo

## Plot 1 - Histogram

# Read and format data for plotting
source("./ExData_project1.R")

# Plot Histogram
png(filename="plot1.png", width=480, height=480, units="px")

hist(tidyData$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

# Don't need dev.copy if we specify png prior to plotting
#dev.copy(png, file="plot1.png")
dev.off()