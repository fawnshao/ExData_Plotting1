setwd("~/Documents/courses/MOOC/JHU_R")
data <- read.table("household_power_consumption.txt",header=T,sep=";")
data[,1] <- as.Date(data[,1],format="%d/%m/%Y")
a <- data[data[,1]=="2007-02-01",]
b <- data[data[,1]=="2007-02-02",]
c <- rbind(a,b)
##plot 3
png(file="plot3.png",width=480,height=480)
plot(as.numeric(c$Sub_metering_1),type="l",ylab="Energy sub metering",xaxt="n",xlab="",col="black")
lines(as.numeric(c$Sub_metering_2),col="red")
lines(as.numeric(c$Sub_metering_3),col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_2"),col=c("black","red","blue"),lty=1)
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()