## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)


# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# The variables num and initials are not the same type

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# There's no library accessing the stringr

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# The initial variable is not spelled right


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
myfriends <- c("Akoly", "Arden", "Anton")
print(typeof(myfriends))

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(vector1, vector2) {
  vector.length <- abs(length(vector2) - length(vector1))
  return(paste("The difference in lengths is", vector.length))
}

vector1 <- c(1,2,3,4,5)
vector2 <- c(1,3,3)
# Pass two vectors of different length to your `CompareLength` function
print(CompareLength(vector1, vector2))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vector1, vector2) {
  if(length(vector2) > length(vector1)){
    return(paste("Your second vector is longer by", abs(length(vector2) - length(vector1))))
  } else if(length(vector2) < length(vector1)) {
    return(paste("Your first vector is longer by", abs(length(vector2) - length(vector1))))
  }
  else {
    return("These vectors are equal")
  }
}
# Pass two vectors to your `DescribeDifference` function
print(DescribeDifference(vector1, vector2))


# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function(vector1, vector2, vector3) {
  vector1 <- c(vector1,vector2, vector3)
  return(vector1)
}
# Send 3 vectors to your function to test it.
vector3 <- c(1,2,4,6)
CombineVectors(vector1, vector2, vector3)
# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(vector1) {
  gsub("[[:upper:]]", "", vector1)
}

class.name <- c("Info 450", "Info 201", "Informatics 222")
CapsTime(class.name)
