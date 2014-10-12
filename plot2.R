source("common.R")
dataToPlot <- getCleanedData()

yLabel <- "Global Active Power (kilowatts)"

## Plot 2
plot(dataToPlot$Global_active_power~dataToPlot$Datetime, type="l", ylab=yLabel, xlab="")

saveToPngFile("plot2.png", height = 480, width = 480)