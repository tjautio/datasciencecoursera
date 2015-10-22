#1)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz.csv")
data <- read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz.csv")

#2)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\gdp.csv")
data <- read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\gdp.csv", skip= 4)


url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\edu.csv")
edu <- read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\edu.csv")
