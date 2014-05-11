setwd("~/Documents/courses/MOOC/JHU_R")
data <- read.table("household_power_consumption.txt",header=T,sep=";")
data[,1] <- as.Date(data[,1],format="%d/%m/%Y")
a <- data[data[,1]=="2007-02-01",]
b <- data[data[,1]=="2007-02-02",]
c <- rbind(a,b)
##plot 2
png(file="plot2.png",width=480,height=480)
plot(as.numeric(c$Global_active_power),type="l",ylab="Global Active Power (kilowatts)",xaxt="n",xlab="")
axis(side=1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
dev.off()