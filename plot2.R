setwd("~/Work/Johns Hopkins/Data Science Specialisation/4. exploratory data analysis/Week 1")
text_file <- "household_power_consumption.txt"
text_to_data <- read.table(text_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- text_to_data[text_to_data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subset$Date, subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot2.png", width=600, height=600)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()