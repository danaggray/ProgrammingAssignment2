## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmx<-function(solve) m<<- solve
  getmx<-function(x = matrix()) m
  list(set=set, get=get, setmx=setmx, setmx=setmx)
}


## Write a short comment describing this function

cacheSolve <- function(x=matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getmx()
  if(!is.null(m)){
    message("...getting cached data...")
    return(m)
  }
  matrix<-x$get
  m<-solve(matrix, ...)
  x$setmx(m)
  # return
  m
  
}
