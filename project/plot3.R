library(dplyr)
library(ggplot2)
data <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/SummarySCC_PM25.rds")
info <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/Source_Classification_Code.rds")
data <- filter(data, fips == "24510") 

pol <- c()
for (i in c(1999,2002,2005,2008)){
        filt1 <- filter(data, year == i & type == "POINT")
        filt2 <- filter(data, year == i & type == "NONPOINT")
        filt3 <- filter(data, year == i & type == "ON-ROAD")
        filt4 <- filter(data, year == i & type == "NON-ROAD")
        
        a <- cbind(i, "point", sum(filt1$Emission))
        b <- cbind(i, "nonpoint", sum(filt2$Emission))
        c <- cbind(i, "onroad", sum(filt3$Emission))
        d <- cbind(i, "nonroad", sum(filt4$Emission))
        pol <- rbind(pol, a, b, c, d)
        rm(filt1, filt2, filt3, filt4, a, b, c, d)
}
pol <- data.frame(as.factor(pol[,1]), as.factor(pol[,2]), as.numeric(pol[,3]))
names(pol) <- c("year", "type", "emission")

png("plot3.png", width = 600)
qplot(year, emission, data = pol, facets = .~type, main = "PM2.5 Sources in Baltimore City, MD", geom = "boxplot")
dev.off()

rm(list=ls())

