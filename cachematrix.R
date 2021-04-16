## These functions create a matrx and caches the inverse of the matrix.
## makeCacheMatrix function creates a matrix that caches its inverse

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set<-function() {
	x <<- inverse
	inverse <<- NULL
}
get<-  function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() 
        list(set=set, get=get,
             setinverse = setInverse,
             getinverse = getInverse)
}


## cacheSolve is a funtion that computes the inverse of the generated matrix of funtion makeCacheMatrix.

cacheSolve <- function(x, ...) {
inverse <- x$getinverse()
     if (!is.null(inverse)) {
        message("getting cached data")
        return(x)
     }
       m<- x$get()
       i<- solve(m, ...)
        x$setinverse(i)
	inverse
}
