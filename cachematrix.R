

## this is the function we are trying to solve.

makeCacheMatrix <- function(x = matrix()) {
## we start by defining some of the variables that we'll be using
                 i   <- NULL
                 get <- function() i
                 set <- function(inv) { i <<- inv } 
         list(original = x, getInverse = get, setInverse = set)
  }


## to solve for the inverse of the matrix and store the cache

cacheSolve <- function(x, ...) {
        ## we start by solving for the inverse.
        if (is.null(x$getInverse())) 
        {
                x$setInverse(solve(x$original))
## this also saves it as 'cacheSolve' which can be pulled out later instead of going thru 
## the whole process again.
    }  
## then return the inverse.
         x$get()
}
