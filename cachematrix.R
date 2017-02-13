## Put comments here that give an overall description of what your
## functions do
## I used the example provided in the assignment to create 
## a cached matrix "s" and then the solve function solves
## for "s" as an inverse of "x"

## Write a short comment describing this function
## the makecacheMatrix takes a matrix and stores it in cache

makeCacheMatrix <- function(x = matrix()) {

        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) s <<- solve
        getinverse <- function() s
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
        
}


## Write a short comment describing this function
## Wthe cacheSolve retrieves the cached matrix "s"
## and creates an inverse of "x"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
        s <- x$getinverse()
        if(!is.null(s)) {
                return(s)
        } 
        data <- x$get()
        s <- solve(data, ...)
        x$setinverse(s)
        s
}