source("common.R")
dataToPlot <- getCleanedData()

yLabel1 <- "Global Active Power (kilowatts)"
yLabel2 <- "Voltage"
yLabel3 <- "Energy sub metering"
yLabel4 <- "Global_Rective_Power"

legendColors <- c("black", "red", "blue")
legendTitles <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

## Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,1,0))
with(dataToPlot, {
    plot(Global_active_power~Datetime, type="l", ylab=yLabel1, xlab="")
    plot(Voltage~Datetime, type="l", ylab=yLabel2, xlab="")
    plot(Sub_metering_1~Datetime, type="l", ylab=yLabel3, xlab="")
    lines(Sub_metering_2~Datetime,col='Red')
    lines(Sub_metering_3~Datetime,col='Blue')
    legend("topright", col=legendColors, lty=1, lwd=2, bty="n", legend=legendTitles)
    plot(Global_reactive_power~Datetime, type="l", ylab=yLabel4,xlab="")
})

saveToPngFile("plot4.png", height = 480, width = 480)