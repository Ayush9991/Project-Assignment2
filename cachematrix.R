makeCacheMatrix <- function(x = matrix()) {
             s <- NULL
             set <- function(y) {
                    x <<- y
                    s <- NULL
             }
             get <- funcion() x
             setinverse <- function(solve) s <<- solve
             getinverse <- function() s
             list(set = set, get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
}


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
