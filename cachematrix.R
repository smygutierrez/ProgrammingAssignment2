## These functions create a matrx and caches the inverse of the matrix.
## makeCacheMatrix function creates a matrix that caches its inverse

specialmatrix<- makeCacheMatrix(matrix(1:16,4,4))
> cacheSolve(specialmatrix)
Error in solve.default(mat, ...) : 
  Lapack routine dgesv: system is exactly singular: U[3,3] = 0
> specialmatrix$get()
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16
> specialmatrix$getInverse()
NULL
> cacheSolve(specialmatrix)
Error in solve.default(mat, ...) : 
  Lapack routine dgesv: system is exactly singular: U[3,3] = 0
> specialmatrix$getInverse()
NULL
> specialmatrix$get()
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16
> specialmatrix$setInverse()
Error in specialmatrix$setInverse() : 
  argument "inverse" is missing, with no default
> specialmatrix$getInverse()
NULL


## cacheSolve is a funtion that computes the inverse of the generated matrix of funtion makeCacheMatrix.

specialmatrix$get()
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16
> specialmatrix$setInverse()
Error in specialmatrix$setInverse() : 
  argument "inverse" is missing, with no default
> specialmatrix$getInverse()
NULL
> specialmatrix$set(matrix(16:1,4,4))
> specialmatrix$get()
     [,1] [,2] [,3] [,4]
[1,]   16   12    8    4
[2,]   15   11    7    3
[3,]   14   10    6    2
[4,]   13    9    5    1
> specialmatrix$getInverse()
NULL
> cacheSolve(specialmatrix)
Error in solve.default(mat, ...) : 
  Lapack routine dgesv: system is exactly singular: U[3,3] = 0
> cacheSolve(specialmatrix)
Error in solve.default(mat, ...) : 
  Lapack routine dgesv: system is exactly singular: U[3,3] = 0
> specialmatrix$getInverse()
NULL

For some reason my test keeps coming out this way?
