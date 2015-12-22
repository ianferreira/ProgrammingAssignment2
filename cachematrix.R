## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) 
  
{
  ## Check if first run
  if (!exists("cachedMatrix")){
    cachedMatrix <<- x
    cachedInvMatrix <<- solve(x)
    cachedInvMatrix
  }else if (identical(x, cachedMatrix) ){
    ## Check if we have a cached matrix
    cachedInvMatrix
  }else{
    ## Save the original matrix  
    cachedMatrix <<- x
    ## Save the identity matrix
    cachedInvMatrix <<- solve(x) 
    
  }
  ## return the cached inverse matrix
  cachedInvMatrix 
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
  ## Return a matrix that is the inverse of 'x'
  makeCacheMatrix(x)
}
