##The first function creates a special "matrix"
Set the value of the matrix.
get the value of the matrix.
set the value of the inverse matrix.
get the value of the inverse matrix.
makeCacheMatrix <- function(x = matrix()) {
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
##it first check if the inverse is already there. If so,then it gets the inverse from cache and skips the next steps.
##Otherwise it calculates the inverse of the data and sets the inverse in the cache via the setinverse function.
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





