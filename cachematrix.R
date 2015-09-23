##The first function creates a special "matrix"
makeCacheMatrix <- fuction(x = matrix()) {
cainv <-NULL
set<-function(y) {
x <<-y
cainv <<-NULL
}
get <-function()x
setinverse <- function(inverse)
cainv <<- inverse
getinverse <- function()cainv
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##cacheSolve function calculates the inverse matrix of the special "matrix" created with the above makeCacheMatrix function.
cacheSolve <- function(x,....) {
    ##return a matrix that is the inverse of 'x'
    cainv <- x$getinverse()
    if(!is.null(cainv)){
    message("getting cached data")
    return(cainv)
    }
    data<- x$get()
    cainv <- Solve(data)
    x$setinverse(cainv)
    cainv
    }





