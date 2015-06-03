source(dataprep.R)

# first plot

hist(Global_active_power, col="Red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png"); dev.off()
