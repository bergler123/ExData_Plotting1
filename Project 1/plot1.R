##Read the names from the dataset - to be used later
datanames <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, nrows = 1)
### read the dataset only the dates we want. 
## Read from line 66638 to 69517
data <- read.table(file = "household_power_consumption.txt", sep = ";", header = FALSE , skip = 66638, nrows = 2879)
### put the names on my subset of the data
names(data) <- names(datanames)


###view the amazing graph
hist(data$"Global_active_power", col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

##save it as a png
png("plot1.png")
hist(data$"Global_active_power", col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
