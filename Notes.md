## Notes about data and questions
### Types of questions:
* Descriptive analysis: Describe what data looks like using e.g. graphs, charts etc. Aim is not to do any conclusions
* Exploratory analysis: You can find new correlations. There is connections but the real causal link is not checked in any detail yet.
* Inferential analysis: Generalize findings from a small sample to a larger population. Most common goal of data analysis.
* Predictive analysis: Try to use previous observation to predict the next one. Simple model and a lot of data tend to work well.
* Causal analysis: How the change of one variable changes others. Usually done via randomized experiments (at least in medicine)
* Mechanistic analysis: Looking for exact relationships. Physical or engineering models.

### What is data?
* "Data are values of qualitative or quantitative variables, belonging to a set of items"
* data.gov
* Remember to have a question to answer. Question before data.

### Big data?
* Data is everywhere today
* The right data is more important than the size of data.

### Experimental design
* figshare.com for larger data sets instead of github
* Obama's randomized website to decide which version attracted more donations
* Spurious correlation: ice cream and drownings
* Prediction usually requires enough difference in the population distributions to distinguish from which distribution the observation came from


## Notes on R	
### History of R
* R is a dialect of S language. 
* Fourth version of S released in 1998, basically what we use as a basis of R today
* Idea that users can start programming when it becomes relevant
* R created in 1991 in New Zealand
* R can run almost on any OS
* Graphics are very good
* Lots of community activity going on
* Free software: 0) Run the program for any purpose 1) study and adapt the program 2) redistribute the copies 3) improve the program and release to the public
* Drawback: 1) It's a bit old and not very good with 3D 2) If it doesn't exist you have to do it yourself 3) Objects must be stored on your physical memory 4) Not ideal for everything

### Design of the R
* The base: runs the R and includes the most fundamental functions
* Then there are everything else. CRAN has about 4000 packages and if they're on the CRAN they has to meet certain criteria
* There are packages all over the net but the level might vary
* Couple of possibly interesting books
** Introduction to R for Quantitative Finance, Gergely Darócz
** A Beginner's Guide to Data Visualisation, Statistical Analysis and Programming using R, Robert J Knell
** An introduction to R for Quantitative Economics, Vikram Dayal
** Financial Risk Modelling and Portfolio Optimisation with R, Wiley
** R Graphics, Paul Murrell

### Where to get help with R
* Google, Forums etc., etc.
* When asking: be specific!
* Give reproducible example
* What is expected output
* What you get instead
* Give version with R, operating system, what function when, but no extra info
* r-help@r-project.org R mailing list.

### Inputs
* <- assignment
* hastag is commenting in R
Then some code 

viesti <- c("haista kukkanen", "Susi!")
> viesti
[1] "haista kukkanen" "Susi!"          
> viesti[1]
[1] "haista kukkanen"
> viesti[2]
[1] "Susi!"
print(viesti)
[1] "haista kukkanen" "Susi!"          
> print(viesti[1])
[1] "haista kukkanen"
y <- 1:23
> y
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18
[19] 19 20 21 22 23

### R Objects and Attributes
* 5 "atomic" classes of objects:
** character
** numeric(real number), enter 1 and R gives you numeric 1, Inf is infinity, Nan non-defined number e.g. x/0
** integer, 1L is integer 1
** complex
** logical (1/0)
* most basic object is vector, multiple of the same class
* list can include different classes and other objects
* vector ()
* Attributes:
** names, dimnames, dimension, class, length, user-defined attributes

### Vectors:
* code vomit
> y <- c(0.5, 0.6)
> y
[1] 0.5 0.6
> y <- c(TRUE, TRUE, FALSE)
> y
[1]  TRUE  TRUE FALSE
> y <- c(T, T, F)
> y
[1]  TRUE  TRUE FALSE
> y <- c("a", "boo", "c")
> y
[1] "a"   "boo" "c"  
> y <- 2:6
> y
[1] 2 3 4 5 6
> y <- 2:6#integer
> y
[1] 2 3 4 5 6
> y <- c(0.5+0i, 0.6+3i)
> y
[1] 0.5+0i 0.6+3i
> y <- vector("numeric", length = 8)
> y
[1] 0 0 0 0 0 0 0 0
> y <- vector("numeric", 7)
> y
[1] 0 0 0 0 0 0 0

* if you mix
 y <- c(2, "skf")
> y
[1] "2"   "skf"
> y <- c(2, T)
> y
[1] 2 1
> y <- c(2, F)
> y
[1] 2 0
> y <- c("boe", F)
> y
[1] "boe"   "FALSE"
> y <- 0:2
> class(y)
[1] "integer"
> as:numeric(y)
Error in numeric(y) : invalid 'length' argument
> y <- 0:6
> class(y)
[1] "integer"
> as.numeric(y)
[1] 0 1 2 3 4 5 6
> y
[1] 0 1 2 3 4 5 6
> clas(as.numeric(y))
Error: could not find function "clas"
> class(as.numeric(y))
[1] "numeric"
> class(y)
[1] "integer"
> as.logical(y)
[1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> as.character(y)
[1] "0" "1" "2" "3" "4" "5" "6"
 y <- c("a")
> as.numeric(y)
[1] NA
Warning message:
NAs introduced by coercion 

##Lists, multiple classes, double brackets
> y <- list(1, T, "agf")
> y
[[1]]
[1] 1

[[2]]
[1] TRUE

[[3]]
[1] "agf"

## Matrices matrix(nrow =, ncol = )
> y <- matrix(nrow =2, ncol = 3)
> y
     [,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> dim(m)
Error: object 'm' not found
> dim(y)
[1] 2 3
> attributes(y)
$dim
[1] 2 3
> y <- matrix(1:6,nrow =2, ncol = 3)
> y
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> y <- matrix(1,nrow =2, ncol = 3)
> y
     [,1] [,2] [,3]
[1,]    1    1    1
[2,]    1    1    1
> y <- 1:10
> y
 [1]  1  2  3  4  5  6  7  8  9 10
> dim(y) <- c(2,5)
> y
     [,1] [,2] [,3] [,4] [,5]
[1,]    1    3    5    7    9
[2,]    2    4    6    8   10
> dim(y) <- c(5,2)
> y
     [,1] [,2]
[1,]    1    6
[2,]    2    7
[3,]    3    8
[4,]    4    9
[5,]    5   10
y <- 1:3
> x <<- 10:12
> x
[1] 10 11 12
> cbind(y,x)
     y  x
[1,] 1 10
[2,] 2 11
[3,] 3 12
> cbind(x,y)
      x y
[1,] 10 1
[2,] 11 2
[3,] 12 3
> rbind(x,y)
  [,1] [,2] [,3]
x   10   11   12
y    1    2    3
> dim(rbind(x,y))
[1] 2 3
> attributes(rbind(x,y))
$dim
[1] 2 3

$dimnames
$dimnames[[1]]
[1] "x" "y"

$dimnames[[2]]
NULL

## Factors
* integer vector and all integers have labels
* higly useful because now you can use labels and you don't have to replace them by numerical variables

> y <- factor(c( "y", "n", "n", "y"))
> y
[1] y n n y
Levels: n y
> table(y)
y
n y 
2 2 
> unclass(y)
[1] 2 1 1 2
attr(,"levels")
[1] "n" "y"
>  y <- factor(c( "y", "n", "n", "y"), levels = c("y", "n"))
> y
[1] y n n y
Levels: y n
> unclass(y)
[1] 1 2 2 1
attr(,"levels")
[1] "y" "n"
> unclass(y)[1]
[1] 1
> class(unclass(y)[1])
[1] "integer"
> unclass(y)[1]+unclass(y)[2]
[1] 3

## Missing values NA (test if value is NA is.na()) and NaN is for undefined mathematical operation ( is.nan())
* NA have a class
* NaN is NA but NA is not NaN

> y <- c(1,2,NA, NaN, 10, 6,3)
> in.na(y)
Error: could not find function "in.na"
> is.na(y)
[1] FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE
> is.nan(y)
[1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
> 
> sum(as.numeric(is.nan(y)))
[1] 1
> sum(as.numeric(is.na(y)))
[1] 2
> 
> dim(y)
NULL
> class(y)
[1] "numeric"
> length(y)
[1] 7
> print "Missing" sum(as.numeric(is.na(y)))/lenght(y)
Error: unexpected string constant in "print "Missing""
> print Missing sum(as.numeric(is.na(y)))/lenght(y)
Error: unexpected symbol in "print Missing"
> print "m"
Error: unexpected string constant in "print "m""
> a <- "Missing"
> print Missing sum(as.numeric(is.na(y)))/lenght(y)
Error: unexpected symbol in "print Missing"
> b <- sum(as.numeric(is.na(y)))/lenght(y)
Error: could not find function "lenght"
> b <- sum(as.numeric(is.na(y)))/length(y)
> print a + b
Error: unexpected symbol in "print a"
> a+b
Error in a + b : non-numeric argument to binary operator
> print("a + b")
[1] "a + b"
> print(a, b)
[1] "Missing"
> print(a)
[1] "Missing"
> b
[1] 0.2857143
> print(a b)
Error: unexpected symbol in "print(a b"
> print(b)
[1] 0.2857143
> print(a)
[1] "Missing"
> a b
Error: unexpected symbol in "a b"
> c <- c(a,b)
> print(c)
[1] "Missing"           "0.285714285714286"
> as.numeric(c)
[1]        NA 0.2857143
Warning message:
NAs introduced by coercion 
> c <- list(a,b)
> print(c)
[[1]]
[1] "Missing"

[[2]]
[1] 0.2857143

> c
[[1]]
[1] "Missing"

[[2]]
[1] 0.2857143

## Data Frames
* columns same length but different columns can 
* Special attributes, row.names()

> data.frame(pasi = 1:4, jenna = 4:1 )
  pasi jenna
1    1     4
2    2     3
3    3     2
4    4     1
> y <- data.frame(pasi = 1:4, jenna = 4:1 )
> nrow(y)
[1] 4
> ncol(y)
[1] 2
> 
> y <- matrix(5:8, nrow = 2, ncol = 2 )
> dimnames(y) <- list(c("saeg", "asf"), c("segarb", "etabd"))
> y
     segarb etabd
saeg      5     7
asf       6     8

## Datasets
### Smallish datasets
* just use read.table or read.csv
### Larger datasets
* maybe good idea to use all the (read help page for read.table)
* if no comments set the comment.char = ""
* colClasses are important. If dataset is large then it's much faster if you define it
* it's important how much RAM you have, OS and is it OS32 or 64?
* e.g. 1500000rows X 120 columns X 8 bytes/numerics means about 1.34 GB of memory requirement and you need more
### Text format
* more metadata in the your dataset
* dump() or dput()
* take a lot of space

> dput(y)
structure(list(a = 1, b = structure(1L, .Label = "a", class = "factor"), 
    c = TRUE), .Names = c("a", "b", "c"), row.names = c(NA, -1L
), class = "data.frame")
> dput(y,file ="y.R")
> new.y <- dget("y.R")
> new.y
  a b    c
1 1 a TRUE

### Opening a connnection
* can be powerful if you don't want to get whole thing or you want to get a data from a webpage
con <-url("http://www.iltalehti.fi","r")
> x <-readLines(con, 10)
> x
 [1] "<!doctype html>"                                                                                                                                                                            
 [2] ""                                                                                                                                                                                           
 [3] "<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\" lang=\"fi\">"                                                                                                                      
 [4] "<head>"                                                                                                                                                                                     
 [5] "<title>Iltalehti.fi | IL - Suomen suurin uutispalvelu</title>"                                                                                                                              
 [6] "<link href=\"http://www.iltalehti.fi/rss/rss.xml\" rel=\"alternate\" type=\"application/rss+xml\" title=\"Iltalehti.fi tuoreimmat uutiset\" />"                                             
 [7] "<meta name=\"description\" content=\"Uutiset, urheilu, viihde, talous, sää, elämäntapa, terveys, perhe, ruoka - Iltalehti.fi, kaikki tuoreet uutiset yhdestä osoitteesta kellon ympäri\" />"
 [8] "<meta name=\"title\" content=\"Iltalehti.fi | IL - Suomen suurin uutispalvelu\" />"                                                                                                         
 [9] "<meta name=\"keywords\" content=\"Uutiset, urheilu, viihde, talous, sää, elämäntapa, terveys, perhe, ruoka\" />"                                                                            
[10] "<meta property=\"og:title\" content=\"Iltalehti.fi | IL - Suomen suurin uutispalvelu\" />"     

## Subsetting
* [] you get the object of same class as you're subsetting  
* [[]], can only be used with list of data.frame
* $ is used to extract elements of a list or dataframe by name
> x <- c(1:5)
> x
[1] 1 2 3 4 5
> x[1]
[1] 1
> x[2:4]
[1] 2 3 4
> x[x<3]
[1] 1 2
> u <- x > 3
> x[u]
[1] 4 5

> x <- list(foo=1:3, bar = "bo")
> x
$foo
[1] 1 2 3

$bar
[1] "bo"

> x$bar
[1] "bo"
> x$foo
[1] 1 2 3


> x <- list(foo= list(1:3), bar = c("bo", "ba"))
> x
$foo
$foo[[1]]
[1] 1 2 3


$bar
[1] "bo" "ba"

> x[c(1,3)]
$foo
$foo[[1]]
[1] 1 2 3


$<NA>
NULL

> x[[c(1,3)]
+ ]
Error in x[[c(1, 3)]] : subscript out of bounds
> x[[c(1,3)]]
Error in x[[c(1, 3)]] : subscript out of bounds
> x[[c(1,2)]]
Error in x[[c(1, 2)]] : subscript out of bounds
> x
$foo
$foo[[1]]
[1] 1 2 3


$bar
[1] "bo" "ba"

> x$bar
[1] "bo" "ba"
> x[[c(2,1)]]
[1] "bo"
> x[[c(1,1)]]
[1] 1 2 3
> x[[1][2]]
Error: unexpected '[' in "x[[1]["
> x$foo
[[1]]
[1] 1 2 3

> x$foo[1]
[[1]]
[1] 1 2 3

> x$foo[2]
[[1]]
NULL

> x$foo[[1]]
[1] 1 2 3
> x$foo[[1]][1]
[1] 1
> x$foo[[1]][2]
[1] 2
> x$foo[[1]][3]
[1] 3

>  x<-matrix(1:6,2,3)
> x[1,2]
[1] 3
> x
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> x[1,3]
[1] 5
> x[1]
[1] 1
> x[1,]
[1] 1 3 5

* drop = FALSe in subsetting for matrices and you maintain the class of the object. Otherwise you get not a matrix but a single number or a vector

* There is partial matching system in R.. With $ it works automatically, and with [["", exact = FALSE]] you get the same result

Removing NA value

> x <- c(1,2, NA, 4, 5)
> bad <- is.na(x)
> x[!bad]
[1] 1 2 4 5

### Vectoriced operations that can be than without looping
> x <- 1:4; y <- 6:9
> x+y
[1]  7  9 11 13
> y==8
[1] FALSE FALSE  TRUE FALSE
> x*y
[1]  6 14 24 36
> x/y
[1] 0.16

* with matrices x * y  is element-wise operation and %*% is matrix multiplication

## Control structures:
* if - else
* for, while
* repeat
* break
...

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
* Two ways of writing this
if(x > 4) {
		y <- 100
} else {
		y <- 9
}

OR

y <- if(x > 4){
			10
} else {
			0
}

### For loop:
for(i in 1:10) {
		print(i)
}

*Three equivalent ways of doing for loop:
x <- c("a", "b", "c", "d")
> 
> for(o in 1:4){
+     print(x[i])
+ }
[1] NA
[1] NA
[1] NA
[1] NA
> 
> for(i in seq_along(x)){
+     print(x[i])
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "d"
> 
> for(letter in x){
+     print(letter)
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "d"
> 
> for(i in 1:4) print(x[i])
[1] "a"
[1] "b"
[1] "c"
[1] "d"
> for(o in 1:4){
+     print(x[o])
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "d"

> for(boo in x){
+   print(boo)
+ }
[1] "a"
[1] "b"
[1] "c"
[1] "d"

* Can be nested

### While loop:

count <- 0
while(count < 10) {
	print(count)
	count <- count +1
}

rbinom(1,1,0.5)
[1] 1
> rbinom(1,2,0.5)
[1] 2
> rbinom(10,2,0.5)
 [1] 1 2 0 1 0 1 0 1 1 2
> 

### repeat, break, next, return
* repeat infinite loop that is stopped only by break command
* break, stops any loop
* next skips one round of iteration can be used for example with if-statement



