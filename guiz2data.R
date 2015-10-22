#1)
library(httr)
library(httpuv)
oauth_endpoints("github")
myapp <- oauth_app("github",
                   key = "d8793b859f41e72eb1d1",
                   secret = "6153a5ab58daf878a08b977dbd7626c7b19ab6db"
                   )
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)

gtoken <- config(token = github_token)

req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
a <- content(req)
summary(req)
req[[3]]
a[[7]]$created_at

#2)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz22.csv")
acs <- read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz5.csv")

install.packages("gsubfn")
install.packages("proto")
install.packages("RSQLite")
install.packages("DBI")


#4)
con <- url("http://biostat.jhsph.edu/~jleek/contact.html")
htmlCode <- readLines(con)
close(con)
htmlCode
head(htmlCode)
htmlCode[10]
a <- c(nchar(htmlCode[10]),nchar(htmlCode[20]),nchar(htmlCode[30]),nchar(htmlCode[100]))
a
      
#5)
con <- url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for")
data <- read.fwf(con,skip=4, widths=c(12, 7,4, 9,4, 9,4, 9,4))
head(data)
sum(data$V4)

con <- url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for")
dat <- read.fortran(con, format = "9.1")
head(dat)
