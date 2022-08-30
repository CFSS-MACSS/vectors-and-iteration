library(tidyverse)
library(modeldata)
library(rcis)

# For loops
## Write a for loop that calculates the arithmetic mean for every column in car_prices
car_prices



## Write a for loop that calculates the maximum value in each column of car_prices
car_prices



# Write iterative operations using a map() function
## Write a map() function that calculates the arithmetic mean for every column in car_prices
car_prices


## Write a map() function that calculates the maximum value in each column of car_prices
car_prices



# Use across() to rescale all numeric variables in rcis::worldbank to range between 0 and 1.
## rescale() function
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}