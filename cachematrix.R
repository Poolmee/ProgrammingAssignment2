## 1. set the value of the Matrix
## 2. get the value of the Matrix
## 3. set the value of the inverse of the Matrix
## 4. get the value of the inverse of the Matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        } # for reset data
        get <- function() x 
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse
             )
}


## Return a matrix that is the inverse 

cacheSolve <- function(x, ...) { # x is the result of function makeCacheMatrix 
       m <- x$getinverse() # x is not data
       if (!is.null(m)) {
               message("getting cached data")
               return(m)
       }
       data <- x$get()
       inverse <- solve(data)
       m <- x$setinverse(inverse)
       m
}
