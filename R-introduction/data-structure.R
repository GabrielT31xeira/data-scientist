# Vetors
x = c(1,2,3,4,5,6)
x
x[1]
x[1] = 10
x[1]
# ---

# Vector string
y = c("a", "b", "c", "d")
y
z = c(1L, 2L, 3L)
z
# ---

# Matrix
VADeaths
colnames(VADeaths)
rownames(VADeaths)
# ---

# ---
VADeaths[, 1]
VADeaths[1 ,]
VADeaths[1:3 ,]
VADeaths[c(1,3,5) ,]
# ---

# Dataframes
longley
longley[, 1:3]
longley$Unemployed
longley["Unemployed"]
# ---

# Lists
ability.cov
ability.cov[1]
class(ability.cov$cov)
class(ability.cov$center)
ability.cov$cov[ ,1:3]
# ---

# Factors
state.region
# ---