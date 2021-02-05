## This function below creates a special "matrix" that can cache its inverse.
## tests is the matrix object that user will submit on the console


makeCacheMatrix <- function(tests = matrix()) {
  invtests <- nuLL
  set <- function(y){
      tests<<-y
      invtests <<- NULL
  }
  get <- function() tests
  setinverse <- function(inverse) inv<<- inverse
  getinverse <- function()invtests
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## This function below evaluates the inverse of the special "matrix" created with the above function 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(tests, ...) {
      inv <- tests$getinverse()
      if(!is.null(inv)){
          message("getting cached data")
          return(invtests)
      }
      data <-tests$get()
      invtests <- inverse(data, ...)
      tests$setinverse(invtests)
      invtests
}
