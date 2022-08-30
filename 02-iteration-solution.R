library(tidyverse)
library(modeldata)
library(rcis)

# For loops
## Write a for loop that calculates the arithmetic mean for every column in car_prices
car_prices

### preallocate space for the output
output <- vector("numeric", ncol(car_prices))

### initialize the loop along all the columns of car_prices
for(i in seq_along(car_prices)){
  # calculate the mean value for the i-th column
  output[[i]] <- mean(car_prices[[i]], na.rm = TRUE)
}

output

## Write a for loop that calculates the maximum value in each column of car_prices
car_prices

### preallocate space for the output
output <- vector("numeric", ncol(car_prices))

### initialize the loop along all the columns of car_prices
for(i in seq_along(car_prices)){
  # calculate the max value for the i-th column
  output[i] <- max(car_prices[[i]])
}

output

# Write iterative operations using a map() function
## Write a map() function that calculates the arithmetic mean for every column in car_prices
map_dbl(car_prices, mean)

## Write a map() function that calculates the maximum value in each column of car_prices
map_dbl(car_prices, max)

# Use across() to rescale all numeric variables in rcis::worldbank to range between 0 and 1.
## rescale() function
rescale01 <- function(x) {
  rng <- range(x, na.rm = TRUE)
  (x - rng[1]) / (rng[2] - rng[1])
}

## apply using mutate() and across()
worldbank %>%
  mutate(across(.cols = where(is.numeric), .fns = rescale01))
