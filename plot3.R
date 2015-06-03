source(dataprep.R)

# third plot

png("plot3.png", width=480, height=480)
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
points(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_2, type="l", col=2)
points(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Sub_metering_3, type="l", col=4)
legend("topright", legend=names(helec)[7:9], lty=1, col=c(1,2,4))
dev.off()
