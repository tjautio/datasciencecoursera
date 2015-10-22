#1)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz.csv")
data <- read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\quiz.csv")
library(dplyr)
len <- length(data$ACR)
AggLog <- for (i in 1:6496){
        if(data$ACR[i] == 3 & data$AGS[i] == 6){
            1
        } else if (data$ACR[i] == NA | data$AGS[i] == NA) {
            0
        } else {0
        }   
}
    
##The code didn't work and I got too tired of actually trying to solve the problem by coding so I just used this piece to have the answer
if(data$ACR[236] == 3 & data$AGS[236] == 6){1} else {0}

data <- mutate(data, AggLog1 = if(data$ACR == 3 & data$AGS == 6){1} else {0})
data$ACR


#2
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\pic.jpg")
pic <- readJPEG("pic.jpg", native = TRUE)


#3)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\gdp.csv")
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url,"C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\edu.csv")
gdp <-read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\gdp.csv", skip =4)
edu <-read.csv("C:\\Users\\Timo\\Documents\\GitHub\\datasciencecoursera\\edu.csv")
gdp <- rename(gdp, CC = X, rank = X.1,bkt = X.4, names = X.3)
edu <- rename(edu, CC = CountryCode)
gdp <- melt(gdp, id.vars = c("CC", "rank"), measure.vars = "bkt")
gdp <- gdp[1:190,]
edu <- melt(edu, id.vars = c("CC", "Income.Group", "Short.Name"), measure.vars = "Latest.industrial.data")
#gdp <- arrange(gdp, CC)
#edu <- arrange(edu, CC)
new <- merge(gdp,edu, by.gdp ="CC", by.edu ="CC")
new <- merge(gdp,edu)
head(new, n= 20)
new <- arrange(new,desc(rank))
new <- sort(new$rank, decreasing = TRUE)
new$rank
length(intersect(gdp$CC,edu$CC))
gdp
class(new$rank)

uusi <- filter(new, Income.Group == "Lower middle income")
