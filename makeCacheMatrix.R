# This function creates a special "matrix" object that can cache its inverse.
# This special matrix is really a list containing a function to consecutively 
# set the value of a matrix, get the value of that matrix,  
# set the value of the inverse of the given matrix and get the value of that inverse
 
makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {  # sets the value of x
                x <<- y
                inv <<- NULL
        }
        get <- function() x   # gets the value of x
        setmatrix <- function(inv) inv <<- solve(x) # sets the value of the inverse
        getmatrix <- function() inv  # gets the value of the inverse
        list(set = set, get = get,   # returns a list of preceding steps
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}