setwd("~/Documents/courses/MOOC/JHU_R")
data <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")
data[,1] <- as.Date(data[,1],format="%d/%m/%Y")
a <- data[data[,1]=="2007-02-01",]
b <- data[data[,1]=="2007-02-02",]
c <- rbind(a,b)
##plot 1
png(file="plot1.png",width=480,height=480)
hist(as.numeric(c$Global_active_power),xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red")
dev.off()
