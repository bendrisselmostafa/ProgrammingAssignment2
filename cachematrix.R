# MakeCacheMatrix Function

makeCacheMatrix <- function(x = matrix()) {
    var <- NULL
  set <- function(y) {
          x <<- y
          var <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) var <<- inverse
  getInverse <- function() var
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}

# CacheSolve Function

cacheSolve <- function(x, ...) {
  var <- x$getInverse()
  if (!is.null(var)) {
          message("Getting Data")
          return(var)
  }
  data <- x$get()
  var <- solve(data, ...)
  x$setInverse(var)
  var