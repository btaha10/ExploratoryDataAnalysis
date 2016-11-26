
# Setup ReadDataSet function

readDataSet <- function() {
   url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
   zFile <- "./2Fhousehold_power_consumption.zip"
   # Download & unzip dataset file
   download.file(url, zFile)
   unzip(zFile)

   # Read house power data from dates 2007-02-01 to 2007-02-02
   ##########################################################################
   hpower <- read.table("./household_power_consumption.txt", skip=66636,nrows=2880, header = TRUE, 
                       sep = ";", dec = ".", na.strings = "?", colClasses=c("character","character",rep("numeric",7)), 
                       col.names = colnames(read.table("./household_power_consumption.txt", 
                                                      header = TRUE, nrow = 1, sep = ";")))

   # Convert the Date and Time variables to Date/Time classes in R 
   hpower$Time<-strptime(paste(hpower$Date,hpower$Time),"%d/%m/%Y %H:%M:%S")
   as.Date(hpower$Date)
   #str(hpower$Date)
   #str(hpower$Time)
   return(hpower)
}

