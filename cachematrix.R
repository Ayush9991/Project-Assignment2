## Caching the Inverse of a Matrix
## Inverse of a Matrix

## This function calculates the Inverse of Matrix.
makeCacheMatrix <- function(x = matrix()) {
             s <- NULL
             set <- function(y) {
                    x <<- y
                    s <- NULL
             }
             get <- funcion() x
             setinverse <- function(inverse) s <<- inverse
             getinverse <- function() s
             list(set = set, get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
}

## This function caches the data which is produced by the above function which calculates inverse of Matrix.

cacheSolve <- function(x, ...) {
        s <- x$getinverse()
        if(!is.null(s)) {
                  message("getting the cache data")
                  return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setinverse(s)
        s
}
