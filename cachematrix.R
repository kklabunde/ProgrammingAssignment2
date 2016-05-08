## The makeCacheMatric function creates a matrix object that can cache the 
## inverse of the matrix. cacheSolve then calculates the inverse of the matrix 
## object created in makeCacheMatric, or retrieves the inverse from the cache 
## if it was previously calculated.
## -----

## initialize the value of the matrix inverse, invrs, to NULL
## declare another function where the value will be cached for a new matrix
##      or a changed matrix
## calculate the inverse using the solve function
## get the inverse
## pass value of the function makeCacheMatrix
makeCacheMatrix <- function(x = matrix()) {
        invrs <- NULL
        set <- function(y) {
                x <<- y
                invrs <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) invrs <<- solve
        getinverse <- function() invrs
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## used to get the cache of the matrix or solve the matrix inverse
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invrs <- x$getinverse()
        if(!is.null(invrs)) {
                message("getting cached data")
                return(invrs)
        }
        mat <- x$get()
        invrs <- solve(mat, ...)
        x$setinverse(invrs)
        invrs
}
