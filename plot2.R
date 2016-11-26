
#Read DataSet
hpower <- readDataSet()

# setup png file
png(file="plot2.png", width = 480, height = 480)

# start plot
par(mfrow=c(1,1))
with(hpower, plot(Time,Global_active_power, type='l',
          xlab="", ylab="Global Active Power (kilowatts)"))

# shutoff png device. back to default display
dev.off()
