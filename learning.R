setwd("GitHub/datasciencecoursera")

myfun <- function() {
    x <- rnorm(100) 
    mean(x)
}

myfun2 <- function (x){
    x + rnorm(length(x))
}

add2 <- function(x,y){
    x+y
}

above10 <- function(x){
    use <- x > 10
    x[use]
    

x <- 1:10
for (i in length(x)){
    a <- paste("C://susi", i, ".csv", sep="")
}

above <- function(x, n = 10){
    use <- x > n
    x[use]
}


columnmean <- function(x){
    nc <- ncol(x)
    means <- numeric(nc)
    for(i in 1:nc){
        means[i] <- mean(x[,i])
    }
    means
}

start <- Sys.time()
a <- rowMeans(x)
stops <- Sys.time()
stops - start

start <- Sys.time()
a <- apply(x, 1, mean)
stops <- Sys.time()
stops - start


m <- function(x) {
    if( x > 0)
        
        
        
        print("x")
    else
        print("soirgnoern")
    invisible(x)
}