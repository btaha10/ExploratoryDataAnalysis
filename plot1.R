
#Read DataSet
hpower <- readDataSet()

# setup png file
png(file="plot1.png", width = 450, height = 450)

# plot histogram
par(mfrow=c(1,1))
with(hpower, hist(Global_active_power, main="Global Active Power",
                 xlab="Global Active Power (kilowatts)", 
                 ylab="Frequency", col="red"))

# shutoff png device. back to default display
dev.off()
