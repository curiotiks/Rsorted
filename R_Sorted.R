##A set of functions for checking if an array of positive real numbers are sorting and in which direction. 

##Creating an array for testing

arr <- c(5, 6, 7, 8, 10, 20, 50, 89, 200)

##ASCENDING: The function first checks to see if the index on which it's on is
##the last by comparing the index with the length. If it is not, then it
##compares the value of the index with the next to see if it is smaller. Every
##times an index is TRUE, it adds to the check value. At the end, if that value
##is equal to the length of the array, then it is sorted.

isasc <- function(arr) {
  check <- 0 ##Check value
  for (i in seq_along(arr)) { 
    if (i < length(arr)) {  ##Checking if the on last index
      if (arr[i] < arr[i + 1]) {  ##Comparing current with next 
        check <- check + 1
      } 
    } else {
      if (arr[i] > arr[i - 1]) {  ##If it is the last in the array, it compares with the previous value
        check <- check + 1
      } 
    }
  }
  if (check == length(arr)) {
    return (TRUE)
  } else {
    return (FALSE)
  }
}

##Testing
isasc(arr)
