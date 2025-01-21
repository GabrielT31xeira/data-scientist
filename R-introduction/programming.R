# if
a = 10
b = 20

if (a < b)
{
  print("verdadeiro")
} else {
  print("falso")
}

# ifelse
x = ifelse(a > 10, "Verdadeiro", "falso")
x

# for
for (i in 1:10) {
  print(i)
}

# while
a = 1
while (a <=10)
{
  print(a)
  a = a + 1
}

# function
oddoreven <- function (x) {
  return(ifelse(x %% 2 == 0, "odd", "even"))
}

oddoreven(5)