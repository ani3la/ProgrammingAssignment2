## 'makeCacheMatrix'  creates a special "matrix" object while 'cacheSolve' function computes the inverse of the special "matrix" returned.

## 'makeCacheMatrix'  creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    d <- NULL
    set <- function(a){
        x <<- a
        d <<- NULL
    }
    
    get <- function() x
    setinverse <- function(inverse) d  <<- inverse
    getinverse <- function() d
    list(set = set , get = get, setinverse = setinverse , getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
