##A set of functions for checking if an array of positive real numbers are sorting and in which direction.

##Creating arrays for testing

aset <- c(5, 6, 7, 7, 7, 7, 8, 10, 20, 50, 89, 200)
dset <- c(1100, 40, 23, 13, 10, 9.2342, 5, 1)
sset <- c(2, 2, 2, 2, 2, 2)

dissorted <- function (arr, dir) {
  
##Ascending function
  isasc <- function(arr) {
    check <- 0 ##Check value
    for (i in seq_along(arr)) {
      if (i < length(arr)) {   ##Checking if on last index
        if (arr[i] <= arr[i + 1]) {    ##Comparing current with next
          check <- check + 1
        }
      } else {
        if (arr[i] >= arr[i - 1]) {   ##If it is the last in the array, it compares with the previous value
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
  
##Descending Function
  isdsc <- function(arr) {
    check <- 0
    for (i in seq_along(arr)) {
      if (i < length(arr)) {
        if (arr[i] >= arr[i + 1]) {
          #Switched sign
          check <- check + 1
        }
      } else {
        if (arr[i] <= arr[i - 1]) {
          #Switched sign
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
  
##Final check with all functions
  if (dir == "a") {
    isasc(arr)
    
  }  else if (dir == "d") {
    isdsc(arr)
  }
}

dissorted (dset, dir = "a")

