# Data import
install.packages("openxlsx")
library(openxlsx)

# Text
x = read.csv(file.choose(), header = TRUE, sep = ",")
x
x = read.csv("./R-introduction/data/Credit.csv", header = TRUE, sep = ",")
x

# Excel
data = read.xlsx("./R-introduction/data/Credit.xlsx", sheet = 1);