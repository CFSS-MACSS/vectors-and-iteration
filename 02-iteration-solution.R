library(tidyverse)

# For loops
## Write a for loop that calculates the arithmetic mean for every column in mtcars
as_tibble(mtcars)

### preallocate space for the output
output <- vector("numeric", ncol(mtcars))

### initialize the loop along all the columns of mtcars
for(i in seq_along(mtcars)){
  # calculate the mean value for the i-th column
  output[[i]] <- mean(mtcars[[i]], na.rm = TRUE)
}

output

## Write a for loop that calculates the maximum value in each column of diamonds
diamonds

### preallocate space for the output
output <- vector("numeric", ncol(diamonds))

### initialize the loop along all the columns of diamonds
for(i in seq_along(diamonds)){
  # calculate the max value for the i-th column
  output[i] <- max(diamonds[[i]])
}

output

# Write iterative operations using a map() function
## Write a map() function that calculates the arithmetic mean for every column in mtcars
as_tibble(mtcars)

map_dbl(mtcars, mean)

## Write a map() function that calculates the maximum value in each column of diamonds
diamonds

map_dbl(diamonds, max)




