#You should create one R script called run_analysis.R that does the following. 
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names. 
# 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# load libraries

library(dplyr)
library(reshape2)
library(tidyr)

# set working directory

setwd("./Github/datasciencecoursera/project/")

# Load datasets
testx <- read.table("./UCI HAR Dataset/test/X_test.txt")
testy <- read.table("./UCI HAR Dataset/test/y_test.txt")
testsub <- read.table("./UCI HAR Dataset/test/subject_test.txt")
trainx <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainy <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainsub <- read.table("./UCI HAR Dataset/train/subject_train.txt")
features <- read.table("./UCI HAR Dataset/features.txt") 
actnam <- read.table("./UCI HAR Dataset/activity_labels.txt")
actnam <- cbind(actnam, c("walk", "walkup", "walkdown", "sit", "stand", "lay"))

# Rename variables
names(actnam) <- c("id", "long", "activity")
names(testx) <- features[[2]]   
names(trainx) <- features[[2]]
names(testy) <- "activity"
names(trainy) <- "activity"
names(trainsub) <- "subject"
names(testsub) <- "subject"

# Combining the columns
testx <- cbind(testy, testsub, testx)    
trainx <- cbind(trainy, trainsub, trainx)
ka1 <- filter(features, grepl("mean", features$V2) | grepl("std", features$V2))
vars <- rbind(1,2,ka1[1]+2)
train <- trainx[vars[,1]]
test <- testx[vars[,1]]

# Combining the datasets

data <- rbind(test, train)

# renaming the activities
data$activity <- sub(1, actnam[1,3],data$activity)
data$activity <- sub(2, actnam[2,3],data$activity)
data$activity <- sub(3, actnam[3,3],data$activity)
data$activity <- sub(4, actnam[4,3],data$activity)
data$activity <- sub(5, actnam[5,3],data$activity)
data$activity <- sub(6, actnam[6,3],data$activity)

# renaming the variables
names(data) <- tolower(names(data))
names(data) <- gsub("-", "", names(data))


# calculating the means for subject and activity pairs
# I had issues with the dpyr package so I ended up using another way to calculate the mean. 
# When dcast() is used it requires aggregation method if observations are not identified.
# It worked now for this case.
data <- data.frame(data)
new_data <- melt(data, id.vars = c(names(data[1:2])), measure.vars = c(names(data[3:81])))
new_data <- dcast(new_data, subject + activity ~ variable, fun.aggregate = mean)

# write table
write.table(new_data, file = "tidy.txt", row.names = FALSE)





