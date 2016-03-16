## 'makeCacheMatrix'  creates a special "matrix" object while 'cacheSolve' function computes the inverse of the special "matrix" returned.

## 'makeCacheMatrix'  creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(a){
        x <<- a
        inv <<- NULL
    }
    
    get <- function() x
    setinverse <- function(solve) inv  <<- solve
    getinverse <- function() inv
    list(set = set , get = get, setinverse = setinverse , getinverse = getinverse)

}



## Return a matrix that is the inverse of 'x'
##takes a matrix and checks it against the data set up in makeCacheMatrix 
## If the inverse has already been calculated (and the matrix has not changed), then  cacheSolve  should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)){
        message("getting catched data")
        return(inv)
    }
    mat <- x$get()
    inv <- solve(mat,...)
    x$setinverse(inv)
    inv   
}
