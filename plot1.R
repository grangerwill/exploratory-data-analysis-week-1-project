setwd("~/Work/Johns Hopkins/Data Science Specialisation/4. exploratory data analysis/Week 1")
text_file <- "household_power_consumption.txt"
text_to_data <- read.table(text_file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- text_to_data[text_to_data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot1.png", width=600, height=600)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()