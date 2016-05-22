library(dplyr)
data <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/SummarySCC_PM25.rds")
info <- readRDS("C:/users/timo/documents/github/datasciencecoursera/project/Source_Classification_Code.rds")
datal <- filter(data, fips == "06037" & type == "ON-ROAD")
datab <- filter(data, fips == "24510" & type == "ON-ROAD")

poll <- c()
polb <- c()
for (i in c(1999,2002,2005,2008)){
    filtl <- filter(datal, year == i)
    cl <- cbind(i,sum(filtl$Emission))
    poll <- rbind(poll, cl)
    filtb <- filter(datab, year == i)
    cb <- cbind(i,sum(filtb$Emission))
    polb <- rbind(polb, cb)
}
poll <- data.frame(poll)
polb <- data.frame(polb)

names(poll) <- c("year", "emissions")
names(polb) <- c("year", "emissions")

changel <- c(NA,
             100*(poll[2,2]-poll[1,2])/poll[1,2],
             100*(poll[3,2]-poll[2,2])/poll[2,2],
             100*(poll[4,2]-poll[3,2])/poll[3,2])

changeb <- c(NA,
             100*(polb[2,2]-polb[1,2])/polb[1,2],
             100*(polb[3,2]-polb[2,2])/polb[2,2],
             100*(polb[4,2]-polb[3,2])/polb[3,2])

poll <- cbind(poll, changel)
polb <- cbind(polb, changeb)



png("plot6.png", width = 750, height = 750)
par(mfrow = c(2,2))
barplot(poll$emissions,
        names.arg = poll$year, 
        col = "red",
        main = "PM2.5 from Motor-vehicles in Los Angeles, CA",
        ylab = "Emissions")
barplot(polb$emissions,
        names.arg = polb$year,
        col = "blue",
        main = "PM2.5 from Motor-vehicles in Baltimore City, MD",
        ylab = "Emissions")
barplot(poll$changel,
        names.arg = poll$year, 
        col = "red",
        main = "% change in PM2.5 in Los Angeles, CA",
        ylab = "%",
        ylim = c(-20, +10))
barplot(polb$changeb,
        names.arg = polb$year,
        col = "blue",
        main = "% change in PM2.5 in Baltimore City, MD",
        ylab = "%")

dev.off()

rm(list=ls())

