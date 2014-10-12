source("common.R")
dataToPlot <- getCleanedData()

mainTitle <- "Global Active Power"
xLabel <- "Global Active Power (kilowatts)"
yLabel <- "Frequency"

## Plot 1
hist(dataToPlot$Global_active_power, main=mainTitle, xlab=xLabel, ylab=yLabel, col="Red")

saveToPngFile("plot1.png", height = 480, width = 480)