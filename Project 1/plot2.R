##Read the names from the dataset - to be used later
datanames <- read.table(file = "household_power_consumption.txt", sep = ";", header = TRUE, nrows = 1)
### read the dataset only the dates we want. 
## Read from line 66638 to 69517
data <- read.table(file = "household_power_consumption.txt", sep = ";", header = FALSE , skip = 66638, nrows = 2879)
### put the names on my subset of the data
names(data) <- names(datanames)


###need to use the strptime arugment
datetime <- paste(data$"Date",data$"Time")
datetime <- strptime(datetime, format = "%d/%m/%Y %H:%M:%S")

data <- cbind(datetime,data)

###view the amazing graph
plot(data$"datetime",data$"Global_active_power", ylab = "Global Active Power (kilowatts)", xlab = "",  type = "l")

##save it as a png
png("plot2.png")
plot(data$"datetime",data$"Global_active_power", ylab = "Global Active Power (kilowatts)", xlab = "",  type = "l")
dev.off()