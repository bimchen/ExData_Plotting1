df <- read.csv("household_power_consumption.txt",sep=";", nrows=1)
colnames <- names(df)
df <- read.csv("household_power_consumption.txt",sep=";", skip=66636, nrows=2880)
names(df) <- colnames
df$Time <- strptime(paste(df$Date,df$Time),"%d/%m/%Y %H:%M:%S")
png(filename="plot2.png", width=480, height=480)
plot(df$Time, df$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()