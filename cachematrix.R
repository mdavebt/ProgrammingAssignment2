## x is a vector
## nr = number of rows, nc = number of columns, nr = nc for square matrix
## m is the cached matrix
## invm is the inverse of cached matrix
## makeCacheMatrix will put all the objects in global enviornment
## Thus we can use all its objects for cacheSolve

makeCacheMatrix <- function(x = vector(), nr, nc=nr) {

       	y <- NULL
	
	sety <- function(){
		y <<- x
		y
	}

	if(!is.null(sety())){
		y <<- x
	}

	m <<- matrix(y,nr)

	invm <<- solve(m)
}

## This function will solve for the matrix developed in above function
## newy = new vector supplied of new matrix
## newr = rows of new vector, newc = columns of new vector
## newm = new matrix which is generated for comparision is cache matrix
## This fucntion solves new matrix only if the newm is different from m

cacheSolve <- function(newy = vector(), newr, newc = newr) {

	newm <- matrix(newy, newr, newc)

	nr <- nrow(m)

	if((length(setdiff(y,newy)) == 0) 
	&& (length(setdiff(newy,y)) == 0)
	&& (nr == newr)){
		message("Using Cache Matrix Inverse")
		return(invm)
	} else {
		newinvm <- solve(newm)
		newinvm
	}
		
 
 }
