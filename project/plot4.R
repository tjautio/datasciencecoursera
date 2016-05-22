library(dplyr)
library(ggplot2)
data <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/SummarySCC_PM25.rds")
info <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/Source_Classification_Code.rds")
#data <- filter(data, fips == "24510") 
coal <- grep("Coal$", info$EI.Sector)
coal <- data.frame(unique(info[coal,1]))

co <- c()
for (i in 1:length(coal[,1])){
    em <- grep(coal[i,],data$SCC)
    co <- rbind(co, em)
}
a <- as.list(co)
a <- c(co)
b <- data[co2,]

pol <- c()
for (i in c(1999,2002,2005,2008)){
    filt <- filter(b, year == i)
    c <- cbind(i,sum(filt$Emission/100))
    pol <- rbind(pol, c)
}
pol <- data.frame(pol)

png("plot4.png")
pic <- barplot(pol$V2,
               names.arg = pol$i, 
               col = "blue",
               main = "PM2.5 Emission from Coal in US",
               ylab = "Emission in unit x 100")
dev.off()

rm(list=ls())

