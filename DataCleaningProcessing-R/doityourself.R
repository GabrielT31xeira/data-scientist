# data tratment
# This dataframe is to know if it can rain and if you can go out to play ball or not.
data = read.csv('./data/tempo.csv', sep = ";", na.strings="", stringsAsFactors=T)
head(data)
summary(data)

colnames(data) = c("Appearance", "Temperature", "Humidity", "Wind", "Play")
head(data)

# Date tratment for rainy days
result <- subset(data, Appearance == "chuva")
print(result)

# Date tratment for sunny days
result <- subset(data, Appearance == "sol")
print(result)

# Date tratment for Dubbed days
result <- subset(data, Appearance == "nublado")
print(result)

result <- subset(data, Appearance == "menos")
print(result)

data$Wind <- as.character(data$Wind)
data[is.na(data$Wind),]$Wind <- "Falso"
summary(data)

data[is.na(data$Humidity),]$Humidity <- median(data$Humidity, na.rm = T)
summary(data)

data$Appearance <- as.character(data$Appearance)
data[data$Appearance == "menos",]$Appearance <- "chuva"
summary(data)

data[data$Temperature < 0 | data$Temperature > 100,]$Temperature <- median(data$Temperature)
summary(data)

data[data$Humidity < 0 | data$Humidity > 100,]$Humidity <- median(data$Humidity)
summary(data)