## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# initials is a string which cannot be added to my.num

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# str_length is not a valid method

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# "initial" object was never saved. If it is in reference to the "initials" object from earlier, then it uses the wrong variable name


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector <- c(6, 5)
typeof(vector)
# This is considered to be a double vector

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  return(paste("The difference in lengths is", difference))
}

# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(c(5, 6), c(9, 4, 5)))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(v1, v2) {
  difference <- abs(length(v1) - length(v2))
  if (length(v1) > length(v2)) {
    return(paste("Your first vector is longer by", difference, "elements"))
  } else {
    return(paste("Your second vector is longer by", difference, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
v1 <- c(5, 6)
v2 <- c(5, 6, 7)
print(DescribeDifference(v1, v2))

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(v1, v2, v3) {
  return(c(v1, v2, v3))  
}

# Send 3 vectors to your function to test it.
v3 <- c(8, 9, 10)
print(CombineVectors(v1, v2, v3))
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(names) {
  caps <- "[A-Z]"
  gsub(caps, "", names)
}

names <- c("Info200", "Info201", "Stat311")
CapsTime(names)

