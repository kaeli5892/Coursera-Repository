## Write a short comment describing this function

## These functions cache the inverse of a matrix.
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix = function(x = matrix()) {
  i = NULL
  set = function(y){
    x <<- y
    i <<- NULL
  }
  get = function() x
  setinverse = function(solveinverse) i <<- solveinverse
  getinverse = function() i
  list(set = set, get = get, 
	 setinverse = setinverse, 
	 getinverse = getinverse)
}


## Write a short comment describing this function
## This function computes the inverse of the special “matrix” returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}


