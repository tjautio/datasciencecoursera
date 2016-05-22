library(dplyr)
data <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/SummarySCC_PM25.rds")
info <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/Source_Classification_Code.rds")
data <- filter(data, fips == "24510" & type == "ON-ROAD")

## I checked that the on-road matches with the motor-vehicles defined in the Source_Classification_Code.rds - file ##

pol <- c()
for (i in c(1999,2002,2005,2008)){
    filt <- filter(data, year == i)
    c <- cbind(i,sum(filt$Emission))
    pol <- rbind(pol, c)
}
pol <- data.frame(pol)

png("plot5.png")
pic <- barplot(pol$V2,
               names.arg = pol$i,
               col = "blue",
               main = "PM2.5 Emission from Motor-vehicles in Baltimore City, MD",
               ylab = "Emissions")
dev.off()

rm(list=ls())