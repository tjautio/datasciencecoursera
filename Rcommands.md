## R commands
### R intro
* getwd() gives working directory
* rnorm('how many rnd var we produce') - normal random variable
* function(){
			'the function itself here'
			}
* length() takes the length of a list or vector?
* source() imports functions you have in file.R

### Some useful functions:
* rnorm() gives you a draw from normal distribution
* rbinom() gives you a draw from binomal distribution
* length() takes the length of a list or vector?

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
* is.na(), is.nan()


### Reading data
* read.table(), read.csv("write here the path") for reading tabular data
* readLines() reads lines of text file
* source() reads R code
* dget() also reading R code files
* load(), for loading saved workspace
* unserialize(), read R object in binary form
* writing analougues are:
* write.table(), writeLines(), dump(), dput(), save(), serialize()
#### read.table() arguments
* file, file-name
* header, logical, if the file has header lines
* sep, string, how the columns are separated
* colClasses, character, Class of each column in the dataset
* nrow, number of rows in dataset
* comment.char, string indicating comment character
* skip, the number of lines to skip from the beginning
* stringsAsFactor, if character variables as coded as factors
* read.csv - otherwise the same but default separator is comma, and header is always true
* rm() removes an object(s)
* file(), opens file
* gzile(), open a connection to compression gzip algorithm
* bzfile(), open a connection to compression gbz2ip algorithm
* url(), opens a connection to a webpage
* complete.cases() tells you which rows have good many missing values and you want to get rid of them
* which() Give the TRUE indices of a logical object, allowing for array indices. e.g data1[which(data1$Ozone >31),]
* head(), tail(), prints the head and tail of the dataset

### Directories
* getwd(), setwd("")
* dir.create("", recursive = logical) Creates a directory
* file.create("") Creates a file
* ls() lists objects in your environment
* list.file() lists files in current working directory
* file.exits("") logical check if a file exists
* file.info("")
* file.rename("", "")
* file.copy("","")
* file.path("","",...) OS independent path
* unlink("", recursive = logical) deletes directory

### Sequences
* from:to
* seq(from, to, by = size of the step, or length = how many )
* length()
* seq_along('sequency')
* rep(atom or vector, times = or each =)
* seq_len() sequence length of the argument

### Vectors
* c(,,,)
* >, <, ==, <=, >=, !="inequality", | or, & and, ! negation
* paste("", "",collapse = " ", or sep =)

## Control stuctures:
### If else:

* if(condition){
			## do something
} else {## do something else (optional)
}

* if(condition){
			## do something
} else if (condition) {
## do something (optional)
}else {## do something (optional)
}

### For loop:
for(i in 1:10) {
		print(i)


### While loop
> count <- 0
> while(count < 10) {
+   print(count)
+   count <- count +1
+ }
[1] 0
[1] 1
[1] 2
[1] 3
[1] 4
[1] 5
[1] 6
[1] 7
[1] 8
[1] 9

### repeat, break, next, return
* infinite loop that is stopped only by break command















