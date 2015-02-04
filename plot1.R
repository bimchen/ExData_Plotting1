df <- read.csv("household_power_consumption.txt",sep=";", nrows=1)
colnames <- names(df)
df <- read.csv("household_power_consumption.txt",sep=";", skip=66636, nrows=2880)
names(df) <- colnames
png(filename="plot1.png", width=480, height=480)
hist(df$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()