# Check Working Directory
getwd()

#Importing CSV Data to Global Enviroment
BitcoinData <- read.csv("HistoricalData.csv", header = TRUE, sep = ",")

View(BitcoinData)
