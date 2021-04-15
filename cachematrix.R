## These functions create a matrx and caches the inverse of the matrix.
## makeCacheMatrix function creates a matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
set <- function(y) {
	x <<- y
	i <<- NULL
}
get <- function() x
        setInverse <- function(inverse) i <<- inverse
        getInverse <- function() i
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## cacheSolve is a funtion that computes the inverse of the generated matrix of funtion makeCacheMatrix.

cacheSolve <- function(x, ...) {
i <- x$getInverse()
     if (!is.null(i)) {
        message("getting cached data")
        return(x)
     }
        mat <- x$get()
        i <- solve(mat, ...)
        x$setInverse(i)
	i
}
