library(dplyr)
data <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/SummarySCC_PM25.rds")
info <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/Source_Classification_Code.rds")
pol <- c()
for (i in c(1999,2002,2005,2008)){
        filt <- filter(data, year == i)
        a <- cbind(i,sum(filt$Emission)/1000)
        pol <- rbind(pol, a)
}
pol <- data.frame(pol)

png("plot1.png")
pic <- barplot(pol$V2,
               names.arg = pol$i, 
               col = "blue",
               main = "Total PM2.5 Emission in US",
               ylab = "Emission in unit x 1000")
dev.off()
rm(list=ls())

