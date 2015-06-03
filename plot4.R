source(dataprep.R)

# fourth plot

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
points(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_2, type="l", col=2)
points(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_3, type="l", col=4)
legend("topright", legend=names(helec)[7:9], lty=1, col=c(1,2,4), bty="n")
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Global_reactive_power, type="l", xlab="datetime")
dev.off()

