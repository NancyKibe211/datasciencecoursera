png("plot2.png", width=480, height=480)

plot(df$datetime,df$Global_active_power,type="l",xlab=" ",
     ylab="Global Active Power (kilowatts)")

dev.off()