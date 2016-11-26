
#Read DataSet
hpower <- readDataSet()

# setup png file
png(file="plot4.png", width = 450, height = 450)

# setup frame for 2x2 plots with appropriate margins
par(mfrow=c(2,2), mar=c(4,4,2,1))
attach(hpower)

# plort first graph
plot(Time, Global_active_power, type='l', col="black", 
     xlab="", ylab="Global Active Power")

# plot second graph for voltage
plot(Time, Voltage, type='l', col="black",
     xlab="datetime", ylab="Voltage")

# plot 3rd graph
plot(Time, Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(Time, Sub_metering_2, col="red")
lines(Time, Sub_metering_3, col="blue")

# anchor legend at topright corner of 3rd graph
legend('topright',lty=1,col=c("black","red","blue"), bty="n",
       cex=.7, adj=c(0,.5), text.font = .1, y.intersp=.9, lwd=2,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# plot 4th graph
plot(Time, Global_reactive_power, type='l', col="black", xlab="datetime", ylab="Global_reactive_power")

# detach hpower dataset
detach("hpower")

# shutoff png device. back to default display
dev.off()
