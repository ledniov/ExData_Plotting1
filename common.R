## This file contains parts that repeats in all four plorring tasks - getting data, 
## normalizing it and saving to file

getCleanedData <- function() {
    data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                     nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
    data$Date <- as.Date(data$Date, format="%d/%m/%Y")
    
    dataToPlot <- subset(data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
    rm(data)
    
    ## Converting dates
    datetime <- paste(as.Date(dataToPlot$Date), dataToPlot$Time)
    dataToPlot$Datetime <- as.POSIXct(datetime)
    
    dataToPlot
}

saveToPngFile <- function(fileName, height, width) {
    dev.copy(png, file=fileName, height=height, width=width)
    dev.off()
} 