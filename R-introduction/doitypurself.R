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

#quest 4
women
tail(women, 10)