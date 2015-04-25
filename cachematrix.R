## These functions either calculates the inverse of a matrix or searches
## the cache to see if the inverse already exists

## This function checks to see if the inverse exists and return it or
## calls the next function to calculate it

makeCacheMatrix <- function(x = matrix()) {
  
  ## Check to see if the inverse exists and return it if it does exist

  if(exists("y")) {
    
    message("getting cached data")
    return(y)
    
  }

  ## Call the other function to calculate the inverse if it doesn't exist
  
  else { 

  y <- cacheSolve(x)
  return(y)

  }
  
}


## This function will calculate the inverse of the matrix if it did not
## already exist in the cache.

cacheSolve <- function(x, ...) {

  ## Return a matrix that is the inverse of 'x'
  
  y <<- solve(x)
  return(y)
  
}
