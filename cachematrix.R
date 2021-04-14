# Raphael Joseph Bacal
# Coursera
# Week 3

## Write a short comment describing this function

makeCacheMatrix <- function(x=matrix()){
inv=NULL
set <- function(y){
x <<- y
inv<<-NULL
}
get <- function(){x}
setInverse <- function(inverse){inv <<- inverse}
getInverse <- function(){inv}
list(set=set,get=get,setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

acheSolve <- function(x, ...){
inv <- x$getInverse()
if(!is.null(inv)){
message("Regresa a cache data")
return(inv)
}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv
}

datos <- makeCacheMatrix(matrix(1:4,nrow =2,ncol = 2))
datos$get()
datos$getInverse()
cacheSolve(datos)
