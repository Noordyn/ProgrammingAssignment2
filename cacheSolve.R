# This function computes the inverse of the special "matrix" returned by makeCacheMatrix
# If the inverse has already been calculated (and the matrix has not changed), then it 
# retrieves the inverse from the cache

cacheSolve <- function(x) {
        inv <- x$getmatrix()                    # tries to get the inverse
        if(!is.null(inv)) {				# returns the inverse if it has been calculated
                message("getting cached matrix")  
                return(inv)
        }
        datamatrix <- x$get()				# stores the initial matrix if the inverse has not been calculated
        inv <- solve(datamatrix)			# computes the inverse			
        x$setmatrix(inv)				# sets the inverse
        inv							# returns the inverse
}