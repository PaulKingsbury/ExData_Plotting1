attach(dataprep.R)

# second plot

fullTime <- paste(Date, Time)
plot(strptime(fullTime, format="%Y-%m-%d %H:%M:%S"), Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png"); dev.off()
