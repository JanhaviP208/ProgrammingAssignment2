## function to create a matrix object and cache the inverse


## takes the input from the user 

makeCacheMatrix <- function(sample = matrix()) {
  invsample <- NULL
  set <- function(x) {
    Sample <<- x
    invsample <<- NULL
  }
  get <- function() sample
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() invsample
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}



## computes the inverse of the matrix submitted by the user in the above makeCacheMatrix function

cacheSolve <- function(sample, ...) {
  ## Return a matrix that is the inverse of 'sample'
  inv <- sample$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(invsample)
  }
  mat <- sample$get()
  invsample <- solve(mat, ...)
  sample$setInverse(invsample)
  invsample
}

