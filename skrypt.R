### R BASICS

# Calculator
2 + 5

3 - 7

20 * 10

387 / 9

2 ** 6

# Task 1
# Calculate how many dozens of days there are in a year (You might want to google floor division in R).


# Displaying things in the console
print('Hello')

print(1)




### VARIABLES AND TYPES

# This is a variable
t <- 5

u <- 3L

v <- 15 + 8i

x <- 'hello'

y <- TRUE

z = 3.5

# Everything that is a comment will be ignored
# a <- 4 + 6
b <- 10 + 12

# Let's try mixing types
40 + "dwa"

# So here our journey with errors and debugging begins.
# Important steps in solving such error:
# 1. Read carefully
# 2. Follow the suggestions / instructions
# 3. Google

cat(40, "dwa")

# We can try to investigate, what actually happened
mystery <- cat(40, "dwa")
print(mystery)

# This might not be clear, so let's look for clues in the help section

# As suggested, we will use paste
clear <- paste(40, "dwa")




### COMPLEX STRUCTURES

# Vectors
apple <- c('red','green',"yellow")
print(apple)

# Lists
numbers <- list(c(2,5,3),21.3,sin)

# Matrices
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

# Arrays
arr <- array(c('green','yellow'),dim = c(3,3,2))
print(arr)

# Factors
factor_apple <- factor(apple)

print(factor_apple)
print(nlevels(factor_apple))

# Data frames (the most important one for us)
BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)

print(BMI)

# Task 2
# Create a vector with at least three logical values.
# logical_vector <-

# Create a small dataset with at least 4 rows and 3 columns (fruit, sweetness, hate)
# fruit_ranking <-




### IMPORTING DATA

# If we need a dataset of any kind, the easiest way is to use a library containing
library(datasets)

# If we want to use data from a file, we can use the RStudio option.


### FOR THE LAST 10 MINUTES
# Installing new packages on the example of Tidyverse