## These functions create a matrx and caches the inverse of the matrix.
## makeCacheMatrix function creates a matrix that caches its inverse

makeCacheMatrix
function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
}
get <- function() x
         setInverse <- function(inverse) inv <<- inverse
         getInverse <- function() inv
         list(set = set,
              get = get,
              setInverse = setInverse,
              getInverse = getInverse)
}


## cacheSolve is a funtion that computes the inverse of the generated matrix of funtion makeCacheMatrix.

cacheSolve
function(x, ...) {
inv <- x$getInverse()
         if (!is.null(inv)) {
                 message("getting cached data")
                 return(inv)
         }
         mat <- x$get()
         inv <- solve(mat, ...)
         x$setInverse(inv)

        ## Return a matrix that is the inverse of 'x'
inv
}
