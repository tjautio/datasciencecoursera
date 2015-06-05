## R commands
### R intro
* getwd() gives working directory
* read.csv("write here the path") reads csv file
* rnorm('how many rnd var we produce') - normal random variable
* function(){
			'the function itself here'
			}
* length() takes the length of a list or vector?
* source() imports functions you have in file.R

### Data types lectures
* vector(class, length) creastes on empty vector of particular class and lenght
* c(), concatenate a vector of values you give
* class() gives you the class of the object
* matrix('what is filling the matrix', nrow =, ncol = ) creates a matrix
* dim() gives you the dimension of the object
* attributes() gives you the dimensions and names of the dimensions	
* dim(y) <- c(2,5) creates on object with given dimensions
* rbind() and cbind() creates matrix from given vectors, either in row or column vice
* factor() [
> y <- factor(c( "y", "n", "n", "y"), levels = c("y", "n"))] otherwise in alphabetical order
* table() gives some statistics
* unclass() unclasses the data in integer form
* data.frame(), read.table, read.csv(), data.matrix(), 
* ncol(), nrow() number of columns or rows
* names() gives you the names or you can assign the names
* For matrices:
> y <- matrix(5:8, nrow = 2, ncol = 2 )
> dimnames(y) <- list(c("saeg", "asf"), c("segarb", "etabd"))
> y
     segarb etabd
saeg      5     7
asf       6     8