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
* is.na(), is.nan()
* is.null()
* na.rm = logical
* ls() lists something?
* environment()
* strptime() turns character vector to time object
* which() Takes logical vector and tells which elements are TRUE
* any(), all(), takes logical vector and returns true if any or all are TRUE
* gl(n,k,length) gives list with n different levels, all including k elements unless lenght is defined and it cuts the length
* <<- assign value to an object in an different environment that the current one
* as."add what you want" creates an object of a particular class
* class() returns the class of the object
* unclass() returns the value how R stores the object
* str() summarises an object
* summary()
* head()
* tail()
* split(dataset, dataset$"label of the variable")
* gl()
* set.seed(1984)

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
}

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


## Functions:

x <- function(args){
		%the action
}

### Specific loop functions
* lapply(x,function, ...) Loop over a list and evaluate a function on each elements
* sapply() Try to simplify result of lapply()
* apply(x, margin, function, ...) Apply a function over the margins of an array
* tapply(x, index, function) apply a function over subset of a vector
* mapply(function, ..., MoreArgs = NULL, SIMPLIFY = TRUE, USE.NAME = TRUE) multivariate lapply()
* split(x(vector, list, dataframe, function, )) applies a function and provides a summary statistics. Produces a list. Easy to use lapply to with split
* rowMeans(), colMeans(), rowSums(), colSums(), highly optimised functions for this purpose


### Depungging functions:
* traceback() print function call stack. Have to use right a way after error occurs
* debug() flags a function for debug mode. You can go thourght the funtion line by line.
* browser() suspends the execution
* trace() insert debugging code into a function without editing the code
* recover() Execution of a function stops when an error happens

### str():
* compactly  displays the contents of an object
* summary() is another useful function

### Simulation
* rnorm() normal random variable
* dnorm() density
* prnom() cumulative distribution
* qnorm() quantile function
* rpois() rng with poisson
* set.seed() set the seed so you get some set of numbers

* what if you want to produce random numbers from a linear model
* e.g. y <- 0.5 + 2*x + e. create set of random numbers x and e and then you can calculate y

* sample() get a random sample from a a given set

## Getting data
* getwd() tells you your current working directory
* setwd("C:\\Users\\Adrew\\downloads") set your working directory
* setwd("..\\") Move on directory up
* setwd(".\\data")

* file.exists("directoy name") check if the directory exists
* dir.create("directory name") create a directory if it doesn't exists
* download.file() imports file from web
* url is the address, destfile is the destination, method depends on the file

* read.table(file, header, sep, row.names, nrows) reads the file and stores it into RAM
* read.xlsx(), read.xlsx2() sheetIndex, header
* write.xlsx() you can also write excel files
* xlsx package
* data.table() faster than data.frame(), written in C

* dbConnect(), mySQL
* dbGetQuery(), you pass mySQL commands inside the function
* dbDisconnect(), remember to disconnect right after you have got the data
* dbListFields()
* dbReadTable()
* dbSendQuery(), probably databases are too large to read in R as whole so you want only get a part of it
* dbClearResult() clear the query from the server

* h5createFile()
* h5createGroup()
* h5read()
* h5write()

* httr-package: GET()

## Manipulating data
* which(), excludes NA's 
* sort(), default = increasing
* df[order(df$var1),] orders the dataframe based on the one variable
* plyr package: arrange(df, var1) desc()
* df$var <- rnorm(5) adding variables, df <- cbind(df, rnorm(5)), also rnorm()
 
 ### Summarizing
 * head(,n= 3), tail()
 * summary()
 * str()
 * quantile(, probs = c(0.5, 0.75, 0.9))
 * table(data$variable, useNA = "ifany")
 * sum(), any(), all()
 * colSums(), rowSums()
 * as.data.frame()
 * xtabs(), creates cross tabs, see notes
 * ftable() combines smaller tables to one bigger one
 * object.size() in bytes, print(object.size(data), units = "Mb") print the size of the object
 * seq()
 * ifelse(logical, what to print)
 * cut(data, breaks=quantile()), or easier with Hmisc package, cut2(,g = 4) amount of groups
 * factor(); to turn something in factor variables
 * sample(); creates a sample
 * as.numeric(); turn strings e.g. in numeric
 * plyr -package mutate()
 * some transformations: abs, sqrt, ceiling, floor, round, signif, cos, sin, log, log2, log10, exp
 
 ### Reshaping data
 * reshape2 -package
 * melt(); tell which variables are id and which are measure
 * dcast(data, var1(rows) ~ variable(columns)); shapes it again to particular shapes
 * dcast(data, var1 ~ var2,mean) gives now mean
 * tapply(data$var1, data$var2, sum) table apply
 * split(data$var1, data$var2)
 * lapply() list apply
 * unlist()
 * sapply() simple apply
 * acast() array
 * match()
 
 ### dplyr - same thing but with one command
 * assumed to be used for clean tidy data
 * ddply(, data, .(var1), summarize, sum sum(var2))
 * works also for data.table -package
 * select(data, vars) subset of columns
 * filter(data, logical) subset of rows based on logical cndt
 * arrange(data, vars or desc(vars)) reorder rows
 * rename(data, newname = oldname) rename variables
 * mutate(data, var1detrend = var1 - mean(var1)) add new vars or columns or transforms existing ones
 * summarise(data, var1 = mean(var1),...) summary statistics
 * group_by(data,); create for example a dummy for classes and then use that to groups the observations
 * first argument is always the dataset
 * no need to use $, just referring by the name, -(var1:var2) shows all the rest
 * returns always data frame
 * %>% pipeline of operator, no need to define intermediate variables
 
 ### Merging data
 * merge(data1, data2, by.data1="var21", by.data2="var1")
 * if you don't define the by's then it tries to do it with the common names 
 * plyr: join() even more than one df's by join_all(list)
 
 ### Text data
 * tolower() to lower cases
 * topupper() to upper cases
 * sub(), gsub(), subsituting chraracters with something else, sub only 1. on the word, gsub all in words
 * grep(), grepl(), returns where the particular character string appears
 * strsplit() Splits variables to new ones based on words
 * steingr-package: nchar() number of characters, paste0(), str_trim
 
 ### Regular Expressions
 * Metacharacters: ^ beginning of the line, $ end of the line, 
 * ^[Tt] either upper or lower case, 
 * ^[0-9] any number
 * [^?]$ Meaning that does not end with ?
 * 9.11 here . means that it can be any character
 * | or
 * []? the ? after the expression means it is optional
 * \\ means that the sign following \\ not the usual
 * * means that repeat any number of times
 * {1,5} Interval, this is anything between 1 to 5 
 * m,n at least m not more than n; m exactly, m, at least m
 * + space
 * \1 repetition
 * handy when you need to work with text
 
 ### Dates
 * date() gives date
 * Sys.Date() diffenrent. It is as date 
 * weekdays(), months(), julian
 * package lubridate: ymd(), mdy(), dmy(), ymd_hms(..., tz = timezone) etc.
 * Sys.timezone(), wday(), weekday
 
 
## Exploratory data analysis
* Mainly about plotting
 
### Base plot-functions
* boxplot(), abline(), adds horisontal line
* hist(), histogramm; rug() plots the points under the histogrma
* barplot()
* plot(type - "n"[doesn't add the data yet])
* lines(), adds lines
* points( ), adds points
* text(), adds text labes in the plot
* title(), adds titles
* legend(), adds legend
* abline(), adds line you have drawn
* mtext()
* with(),
* par() sets global graphics parameters
* pairs(), scatterplot matrix

 
### the lattice plots
* xyplot(, layout = c(4,1)) scatterplot
* xyplot(){panel.xyplot() panel.abline()...}
* bwplot() boxplots
* levelplot(), countourplot()
* histogramm()
* stripplot(), boxplot with actual points
* dotplot(), violin strings
* splom() scatterplot matrix
* can save the plots as objects
 
### the ggplot2 plots
* qplot(x,y,data, color, geom, fill, facets = .~drv or drv~.), basic function for the package
* Few next points are about gplot()
* Always needs to have data.frame
* Factors are important to labeled
* hides what goes underneath 
* not very flexible

* ggplot() is core function and more flexible than gplot()
* components of ggplot()
* needs data frame
* aesthetic: color, shape size
* geoms: geometic objects such as point, lines, shapes
* facets: for conditional plots
* stats: stat transformations, binning, quantile, smoothing
* scales
* Can be built piece by piece
* Additional functions needed
* g <- ggplot()
* g + geom_point()+ geom_smooth()+facet_grid()
* xlab(), ylab(), labs(), ggtitle()
* theme()
* theme_gray(), theme_bw()
* if you use ylim(), the outliers are excludid
* coord_cartesian(ylim()) let's you have the outlier but not show if it's outside the range
* cut()


 
### Creating plot file
* Vector formats, nice in scaling
* pdf()
* svg()
* win.metafile(), only for windows
* postscript(), not usually available for Windows
* bitmaps, good for lot's points and efficient in memory-vise, not good for re-sizing
* png(), good for lines with solid colors
* jpeg(), good for photos, not good for lines
* tiff()
* bmp()
* dev.off(), closes the graphics device, very important
* when dev.off() is called after that you can see the file
* dev.cur() currently active graphics device
* dev.set(), sets to the graphic device you want to use
* dev.copy(), copies from one to other graphics device
* dev.copy2pdf(), remember to check, ther might be little differences
 
### Clustering
* dist()
* hclust()
* myplclust()-function, which can be downloaded form the course webpage
* heatmap()
* kmeans()
* svd()
* prcomp()

### Colors
* gray(), gives you all the shades of grey
* rgb()
* smoothScatter() when plotting a huge amount of points
* grDevices package
* colorRamp() takes a palette and gives you combination of them
* colorRampPalette() changes the palettes( think heat and topo sets)
* colors()
* RColorBrewer package
* brewer.pal()
 










