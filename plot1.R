#plot1
png(file = "plot1.png")
power <- read.table("household_power_consumption.txt", sep=";", header=TRUE, stringsAsFactors = FALSE)
power$Date <- dmy(power$Date)
powersub <- subset(power, power$Date == "2007-02-01" | power$Date == "2007-02-02")
powersub$Global_active_power <- as.numeric(powersub$Global_active_power)
hist(powersub$Global_active_power, col="red", main="Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()
