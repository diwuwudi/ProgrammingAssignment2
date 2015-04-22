## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## This functon stores a list of functions
  ## related to setting and getting of a 
  ## matrix and an inversed matrix.
  
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setin <- function(solve) i <<- solve
  getin <- function() i
  list(set = set, get = get,
       setin = setin,
       getin = getin)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  ## it searches the cache to see if an inverse 
  ## matrix has been created before.
  ## If not, this function "gets" the matrix and
  ## calculates its inversed matrix.
  i <- x$getin()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setin(i)
  i
}
