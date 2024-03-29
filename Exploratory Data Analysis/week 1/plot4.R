
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))
# Plot 1
plot(df$datetime,df$Global_active_power, type="l", xlab=" ", 
     ylab="Global Active Power")
# Plot 2
plot(df$datetime,df$Voltage, type="l", 
     xlab="datetime", ylab="Voltage")
# Plot 3
plot(df$datetime, df$Sub_metering_1, type="l", xlab=" ",
     ylab="Energy sub metering")
lines(df$datetime, df$Sub_metering_2, col="red")
lines(df$datetime, df$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"),
       c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),
       lty=c(1,1),
       bty="n",
       cex=.5) 
# Plot 4
plot(df$datetime, df$Global_active_power, type="l",
     xlab="datetime", ylab="Global_reactive_power")

dev.off()