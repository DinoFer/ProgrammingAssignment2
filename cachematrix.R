## These functions take a matrix and splits into x and y performing function on each. The
## function will take inverse of matrix and store it in a list.
## second functions will display it if its not null. 

## First function designates the cachematrix function as a matrix
## with x and y and no loops. Get will give the values for the
## inverse. set, get, list will make the matrix inverse, get the value
## and list it.


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        ## nested function
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
get <- function() x
setinverse <- function(inverse) i <<- inverse
getinverse <- function() i
list(set = set,
     get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}

## Function to bring up cached data if not null. Then data will bring up the matrix, i will solve the matrix by inverting (solve function 
##inverts the matrix).  

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
data <- x$get()
i <- solve(data, ...)
x$setinverse(i)
i
}
