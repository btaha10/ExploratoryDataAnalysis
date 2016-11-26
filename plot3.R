
#Read DataSet
hpower <- readDataSet()

# setup png file
png(file="plot3.png", width = 480, height = 480)

# plot master graph
par(mfrow=c(1,1))
plot(hpower$Time, hpower$Sub_metering_1, type="l", col="black",
     xlab="", ylab="Energy sub metering")
# overlay second graph
lines(hpower$Time, hpower$Sub_metering_2, col="red")
# overlay 3rd graph
lines(hpower$Time, hpower$Sub_metering_3, col="blue")
# anchor legend at topright corner
legend('topright',lty=c(1,1,1),col=c("black","red","blue"), 
       cex=.7, adj=c(0,.5), box.lwd=1, text.font = .1, y.intersp=.9,
       text.width = strwidth("10,000,000"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# shutoff png device. back to default display
dev.off()
