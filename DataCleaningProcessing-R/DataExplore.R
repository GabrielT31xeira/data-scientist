# Data cleaning and processing

# data importing
data = read.csv("./data/Churn.csv", sep = ";", na.strings="", stringsAsFactors=T)
head(data)
summary(data)

# columns
colnames(data) = c("id", "Score", "State", "Gene", "Age", "Heritage", "Balance", "Products", "CreditCard", "Active", "Salary", "Left")
head(data)

# Data Explore
counts = table(data$State)
barplot(counts, main = "State", xlab = "State")

counts = table(data$Gene)
barplot(counts, main = "Gene", xlab = "Gene")

summary(data$Score)
boxplot(data$Score)
hist(data$Score)

summary(data$Age)
boxplot(data$Age)
hist(data$Age)

summary(data$Balance)
boxplot(data$Balance)
hist(data$Balance)

summary(data$Salary)
boxplot(data$Salary)
boxplot(data$Salary, outline = F)

data[!complete.cases(data),]

# Salary tratament
summary(data$Salary)
median(data$Salary, na.rm = T)
data[is.na(data$Salary),]$Salary = median(data$Salary, na.rm = T)
data[!complete.cases(data$Salary),]

# Gene padronization
unique(data$Gene)
summary(data$Gene)
data[is.na(data$Gene) | data$Gene == "M", ]$Gene <- "Masculino"
data[data$Gene == "F" | data$Gene == "Fem", ]$Gene <- "Feminino"
summary(data$Gene)

data$Gene = factor(data$Gene)
summary(data$Gene)

# Age tratment
summary(data$Age)
data[data$Age < 0 | data$Age>110, ]$Age
data[is.na(data$Age), ]
median(data$Age)
data[data$Age < 0 | data$Age>110, ]$Age = median(data$Age)
data[data$Age < 0 | data$Age>110, ]
summary(data$Age)

# Duplicate data
x = data[duplicated(data$id), ]
x
data = data[!data$id %in%  c(x$id),]
data[data$id == x$id, ]
x = data[duplicated(data$id), ]
x

# State data
unique(data$State)
summary(data$State)
data[!data$State %in% c("RS", "SC", "PR"), ]$State = "RS"
summary(data$State)
data$State = factor(data$State)
summary(data$State)

# Outliers
desv = sd(data$Salary, na.rm = T)
desv
data[data$Salary >= 2 * desv, ]$Salary

boxplot(data$Salary)
x = boxplot(data$Salary)$out
x

median(data$Salary)
data[data$Salary >= 2 * desv, ]$Salary = median(data$Salary)
data[data$Salary >= 2 * desv, ]$Salary