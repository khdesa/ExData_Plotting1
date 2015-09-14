data = read.table("C:/Users/HP/Downloads/exdata-data-household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE)
subdata <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')
subdata <- transform(subdata, Global_active_power = as.numeric(Global_active_power))
hist(subdata$Global_active_power, col = "red", main = "Global Active Power", xlab = 'Global Active Power (kilowatts)')
