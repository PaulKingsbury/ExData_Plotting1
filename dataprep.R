# read portion of file
# skip and nrows determined by grep on command line, plus some fiddling

helec <- read.csv("Data Science R files/household_power_consumption.txt", skip=66637, nrows=2880, sep=";", na.strings="?", 
                  header=F, col.names=c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", 
                                        "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                  colClasses =c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

# convert first column to more tractable date format

helec$Date <- as.Date(strptime(helec$Date, format="%d/%m/%Y"))
attach(helec) # avoids cumbersome referencing to variable names in data frame
