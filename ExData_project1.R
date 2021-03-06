## Exploratory Data - Project 1
## Annie Flippo

setwd(".")

# If datafile doesn't exist, download and unzip it
if (!file.exists("./household_power_consumption.txt")) {
        # Download data zip file if it doesn't exist
        if (!file.exists("./exdata-data-household_power_consumption.zip")) {
                fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
                download.file(fileUrl, destfile = c("./exdata-data-household_power_consumption.zip"), method = "curl")        
        }
        unzip ("./exdata-data-household_power_consumption.zip")
}

# Data Frame
myData <- read.table("./household_power_consumption.txt", sep=";", header=TRUE, na.strings='?', nrows=70000)
myData[,1] <- as.character(myData[,1])
myData[,2] <- as.character(myData[,2])

#View(myData)

# Create tidy data with only data needed and in useable format
tidyData <- myData

# Create new column with Date & Time
# %y - 2 digit year; %Y - 4 digit year
tidyData$dayTime <- paste(tidyData[,1], tidyData[,2])
tidyData$dayTime <- strptime(tidyData$dayTime, format="%d/%m/%Y %H:%M:%S")

# Convert Date column to Date datatype for use in subsetting
tidyData$Date <- as.Date(tidyData$Date, "%d/%m/%Y")

Date1 <- as.Date("2007-02-01")
Date2 <- as.Date("2007-02-02")

# Subsetting for the dates we want
tidyData <- subset(tidyData, Date %in% c(Date1, Date2))
