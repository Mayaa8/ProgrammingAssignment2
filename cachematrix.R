###Assignment: Catching the Inverse of a Matrix

##there are two parts to this assignment, the first requires to make a function called makeCacheMatrix, to cache the inverse of the special "matrix"
##the second part of this assignment should compute the inverse of the special "matrix" as per the makeCacheMatrix. cacheSolve should retrieve the inverse from the cache of makeCacheMatrix.

##Part 1
##This function should create a special "matrix" object which can cache its inverse
##we should assume that the matrix supplied is always invertible

makeCacheMatrix <- function(x = matrix()) {
        z <- NULL #using an arbitrary letter, z to initialize the inverse
        set <- function(y) { #making the matrix
                x <<- y
                z <<- NULL
}
        get <- function() x #calling for the matrix by making a function
        setinverse <- function(inverse) z <<- inverse #this sets the inverse of the matrix
        getinverse <- function() z #calling for the inverse of the special matrix
        list(set = set, get = get #calling for a list which sets the value of the vector, get the value of the vector, set the value of the inverse, and get the value of the inverse
             setinverse = setinverse,
             getinverse = getinverse)
}


##Part 2
##This function should compute the inverse of the makeCacheMatrix as performed in part 1, which gives a special "matrix".

cacheSolve <- function(x, ...) {
        z <- x$getinverse() #again, using arbitrary letter z as set in part one to call for the inverse matrix and sets the value of z to a function. This should return NULL. 
        if (!is.null(z)) {
                message("getting cached data")
                return(z)
 }
 data <- x$get() #calling for the matrix, and returns the address of the called function
 z <- solve(data, ...) #this calculates the inverse of the special matrix
 x$setinverse(z) #this inputs the inverse value of the special matrix and assigns it to the object 
 z #calls for the matrix to be displayed, which has the inverse from the cache
}
