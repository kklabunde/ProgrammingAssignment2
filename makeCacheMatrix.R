makeCacheMatrix <- function(x = matrix()) {
        invrs <- NULL
        set <- function(y) {
                x <- y
                invrs <- NULL
        }
        get <- function() x
        setinverse <- function(inverse) invrs <- inverse
        getinverse <- function() invrs
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}