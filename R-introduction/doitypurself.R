# quest 1
ana = 8L
paulo = 12L

x = ifelse(ana > paulo, "The girl is older", "The boy is older")
x

# quest 2
help(BOD)

#quest 3
v = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L)

for (i in v) {
  result = ifelse(v[i] %% 2 == 0, v[i], NA)

  if (!is.na(result)) {
    print(result)
  }
}

# quest 4
women
tail(women, 10)

#quest 5
dataset1 <- iris['Sepal.Length'][50:100, ]
dataset2 <- iris['Petal.Length'][50:100, ]

plot(dataset1, dataset2,
     main = 'activity 5',
     xlab = 'sepal length',
     ylab = 'pedal length',
     col = 'blue', pch = 19)

# quest 6
v1 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L)
v2 = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L)

v3 = v1 + v2
print(v3)

# quest 7
CO2

colnames(CO2)
rownames(CO2)
dim(CO2)