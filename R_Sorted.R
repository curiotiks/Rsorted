##A set of functions for checking if an array of positive real numbers are sorting and in which direction. 

##Creating arrays for testing

aset <- c(5, 6, 7, 7, 7, 7, 8, 10, 20, 50, 89, 200)
dset <- c(1100, 40, 23, 13, 10, 9.2342, 5, 1)
sset <- c(2, 2, 2, 2, 2, 2)

##ASCENDING: The function first checks to see if the index on which it's on is
##the last by comparing the index with the length. If it is not, then it
##compares the value of the index with the next to see if it is smaller. Every
##times an index is TRUE, it adds to the check value. At the end, if that value
##is equal to the length of the array, then it is sorted.

isasc <- function(arr) {
  check <- 0 ##Check value
  for (i in seq_along(arr)) { 
    if (i < length(arr)) {  ##Checking if the on last index
      if (arr[i] <= arr[i + 1]) {  ##Comparing current with next 
        check <- check + 1
      } 
    } else {
      if (arr[i] >= arr[i - 1]) {  ##If it is the last in the array, it compares with the previous value
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

##DESCENDING: Ideally, if I copy the above script and switch some signs, it should work. 

isdsc <- function(arr) {
  check <- 0 
  for (i in seq_along(arr)) { 
    if (i < length(arr)) {  
      if (arr[i] >= arr[i + 1]) {  #Switched sign
        check <- check + 1
      } 
    } else {
      if (arr[i] <= arr[i - 1]) {  #Switched sign 
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

##Combining them into a single function --> dissorted (arr, a or d)

dissorted <- function (arr, dir){
  if (dir == "a"){
    isasc(arr)
    
  }  else if (dir == "d"){
    isdsc(arr)
  }
}

##TESTING
dissorted (aset, dir = "a")
