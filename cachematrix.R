
## This is my anwser ! Simon Nicolas

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
 	  m <- x$getsolve()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m
}



## TESTING CODE
## x = matrix(c(2,4,3,1,5,7,9,8,0),nrow=3,ncol=3)
## source("./cachematrix.R")
## y <- makeCacheMatrix(x)
## cacheSolve(y)
## cacheSolve(y)
