source("common.R")
dataToPlot <- getCleanedData()

yLabel <- "Global Active Power (kilowatts)"

## Plot 3
with(dataToPlot, {
    plot(Sub_metering_1~Datetime, type="l",
         ylab=yLabel, xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
})

legendColors <- c("black", "red", "blue")
legendTitles <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

legend("topright", col=legendColors, lty=1, lwd=2, legend=legendTitles)

saveToPngFile("plot3.png", height = 480, width = 480)
