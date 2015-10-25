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

## Functions
* functions are R objects
* can be passed as arguments to other functions
* can be nested
* arguments can have default values. Especially useful when defining a larger function you want to use often and tweak
* arguments can be matched positionally or by name
* e.g. sd(mydata) == sd(x = mydata)
* arguments can be also partially matched as long as it's unique
* lazy evaluation, useless arguments don't produce errors if they're not needed
* ... can be used e.g. when tweaking another function and you don't want to re-write the whole argument list but you want it to available
* after ..., you can't use positional or partial matching
* You can use functions also without {}


## Scoping
* how value is bound to a free variable
* e.g. f <- function(x,y) {
			x^2 + y / z
}
* Scoping is the set of rules that defines what is z (the free variable)
* in R: the values of free variables are searched for in the environment in which the function was defined

## Optimization
* optim() - more than one, nlm(), optimize() - one variable, require you to pass a function as argument

## Coding standards in R
* Use text editors
* Indent your code
* Limit the width
* Limit the length of functions (easier to read and makes your functions easier to debug)

## Dates and Times in R
* x <- as.Date("1970-01-01")
* dates are saved objects of date class
* keep track of the leap years, seconds, daylight savings, time zones, etc.
* helps with the plots

## Debugging
* Something is wrong if you get
* message (mild, might be ok)
* warning(something unexpected happened)
* error (fatal problem)
* condition, all previous are conditions (indicates that something unexpected can happen)
* you can print() to add comments in your code

### When you get an error:
* Ask the questions:
* What are the input
* What did you expected
* What did you get
* What's the difference
* Did you expect the right thing
* Can you reproduce the problem (exactly)

## Profiler
* Helps you to find why your program takes as long as it takes
* Not the first thing
* When it works first then you can optimize it
* you can use system.time() to evaluate how long it took run your code
* user/elapsed time
* you can use Rprof() and summarize summaryRprof()
* Rprof and system.time() DO NOT work together
* keeps track of the call stack
* normalize by.self and by.total
* C or Fortran code doesn't work on profiler


## Getting and cleaning the data
* Data usually is in quirky format, Being able to re-organise is effiently is very valuable
* Raw data -> processing script -> data analysis -> data communication
* This course is about the processing step

### Definition of data
* value variables belonging to a set of items
* Raw data, hard to analyse, usually needs to analysed only once
* Processed data, data is ready for analysis, ALL STATES SHOULD BE RECORDED
* What is raw and processed data is kind of dependent on person and the instant

### Tidy data
* You should have: raw data set, tidy data set, code book, explanation how you got from raw to tidy data set
* set is raw if : you ran no software, didn't manipulate it, didn't remove anything and didn't summarized it any way
* target is: each variable should be in one column, each observation of a variable should be in different row, one table for each kind of variables, if multiple tables they should be linked by a column
* tips: row at the top for names, human readable names, one file per table

### Code book
* information about variables including units
* info about the summary choices
* information where the data came from
* common format word/text file
* study design how the data was collected

### Instruction list
* Ideally computer script (R, Python etc.)
* Input is the raw data

### Downloading a file from internet
* file.exists("directoy name") check if the directory exists
* dir.create("directory name") create a directory if it doesn't exists
* download.file() imports file from web
* url is the address, destfile is the destination, method depends on the file
* method might be different depending if the website is secured or not
* Remeber to record the time of download

### Reading local flat files
* read.table() is most robust but might be a bit slow
* read.csv(), read.csv2(), sep = "," and header = TRUE
* quote ="" means no quote
* skip how many lines to skip before starting

* XL Conncect
* XL Conncect vignette

### XML
* Markup language
* Used to store stucture data, widely used for web applications
* Tags start <section>, end </section>, empty tags <line-break />

* Elements <Greeting> Hello World </Greeting>

* Attributes <img src ="pic.jpg" alt="picture"/>
* <step number ="3"> connect A to B </step>

* loading XML package
* xmlTreeParse(), xmlRoot(), xmlName()
* Can be used to extract efficiently extratc information from websites

### JSON
* Javascropt Object Notation
* Lightweight data storage
* Common format for data drom API's
* toJSON(), fromJSON()

### data.table()
* Fast in subsetting, grouping and updating
* data.table(x =norm(9), y =rep(c("a", "b", "c", "d", each = 3), z= norm(9)))
* Works kind of like data frame. Subsetting a bit different
* It doesn't do a copy of data tables, more memory efficient
* DT[, what you want to do and add that to the table]
* DT[,.N, by = name]
* setkey(DT,x)
* merge
* melt() and dcast() for data.table 


* Output is the tidy data
* No parameters to the script
* If it needs paramters you should give the information

### Downloading files
* You want to download data with R 

### mySQL
* Databases organised as tables
* commmon in web app's
* tables are linked so that all this can be organised pretty easily
* Mysql must be installed and that could be a bit complicated
* http://www.ahschulz.de/2013/07/23/installing-rmysql-under-windows/
* dbConnect(), dbGetQuery(), dbDisconnect(); connection system for databases

### HDF5
* Used to store large datasets
* h5createFile()
* can be used to optimise reading/writing from disc in R

### Reading data from Web
* extracting data from HTML
* webscraping
* url() open connection, readLines() reads lines from the page, remember to close the connection
* htmlTreeParse(), htmlParse
* httr -package: GET()
* Pages with passwords: inside the GET()-function you can use authenticate() to log in
* handle()-function

### Getting data from API's
* developer account usually is needed to access the data
* accessing Twitter, oauth_app(), , sign_oauth1.0() and then GET()
* httr-package works well with FB, Google, Twitter, Github

### Other sources:
* There are more packages 
* gzfile(), bzfile() for zipped files
* foreign package for other languages
* You can also read jpeg, bitmap, png files and GIS data, music etc.


## Manipulating data
### Subsetting
* data.frame[,1], data.frame[,"var1"], data.frame[1:2,"var2"]
* first column of the dataframe, same, and first two rows and second column respectively
* using logical elemenents data.frame[(df$var1 <= & df$var3 >11),]
* & and, | or
* df[which(df$var > 8),] the which() command excludes NA's
* sort()

### Summarizing
* table(data$var %in% c("string")); checks if in var there is any that corresponds to the string
* df[data$var %in% c("string"),] can be used to subset
* xtabs(var3 ~ var1 + var2, data = df), breakdown
* e.g. of using . xtabs(breaks ~ ., data df), breakdown with all the other variables
* ftable() summarises the several smaller ones

### Creating new variables
* creating sequences seq(min, max, by = 2/ length = 3)
* x <- c(1,3,6,25,100); seq(along = x)
* %in% 

## Exploratory data analysis
* mainly plotting that is

### Basic ideas of how to draw analytic graphics
* Show comparison, ask compared to what, show control e.g.
* Show causality, mechanism you believe there is 
* Show multivariate data, try to show as much as possible
* Integrate the evidence, tables, plots etc.
* Describe and document the evidence with good labels, scales etc.
* Content is king, the story is the most interesting. You need first to have something interesting

### Why do we use graphs
* to understand data
* find patterns
* find modelling strategies
* debug analyses
* communicate results
* mainly done for yourself
 
 
## Three plotting systems of R

### Base
* base, start with plot and then add stuff
* drawback is that you can't take thing a way
* 2-D
* basic parameters: 
* pch: plotting symbol
* lty: line type
* lwd: line width
* col: color of plots
* xlab and ylab: labels for the axes
* las: orientation of the axis labels
* bg: background color
* mar: margin size
* oma: outher margin size
* mfrow: number of plots per row
* mfcol: number of plots per column

### Lattice
* the lattice system, creates the whole plot at once
* needs you to specify a lot of things at first
* conditioning types of plots
* cannot add pieces when it's done
* good with panels
* good when plotting many plots simultaneously

### ggplot2
* mixes ideas from the two
* you can add things but it also does more automatically
* lots of defaults but you can also change them

### Graphics Devices
* screen device, pdf, png or jpeg etc.
* ?Devices
* Also some on CRAN
* default is screen device, only one

## Clustering
* you have to define when observations are close 

### Hierarchical clustering
* an agglomerative approach
* Find closest two things
* Put them together and remove the old observations
* find the next closest ones
* produces a tree of how things where put together
* distance metrics: euclidian distance, correlations, mannhattan distance
* merging methodology: average of furthest apart of the clusters, avg of center of gravity
* heatmap() runs cluster analysis for rows and columns
* should be used for exploration

### How to run the algorithm
* 1) you need the distance of the all different points by function dist()
* 2) merge the closest points. You can use hclust()

### K-means clustering
* kmeans()
* fixed number of clusters that is defined first
* guess the center of gravity for every clusters
* iterative process
* Probably good idea to run it couple of times and see if you get similar results

### Principal Components Analysis and Singular Value Decomposition
* The purpose is to decrease the dimension of the data
* SVD is a matrix decomposition X = UVD'; svd()
* PCA related to SVD; prcomp()
* PCA and SVD are practically the same thing
* Doesn't work with NA's in the data
* impute- package 

### Colors in R plotting
* col = 1(black),2(red),3(green)
* maybe trying to use colors that would fit better with the thing that you're plotting
* grDevices -package: colorRamp(), colorRampPalette()
* RColorBrewer -package: 3 palettes: Sequential, Diverging, Qualitative
* colorspace package


