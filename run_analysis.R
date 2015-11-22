RunAnalysis <- function(){

## Download and unzip the file
filename <- "getdata_dataset.zip"
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  
if (!file.exists(filename)){
    download.file(fileURL, filename, mode="wb")
  }  

if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
  }

## Load features and activity labels
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities[,2] <- as.character(activities[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## Extract only the mean and std dev for each measurement
selectedFeatures <- grep(".*mean.*|.std.*", features[,2])

## Load datasets
## Test dataset
test_dat <- read.table("UCI HAR Dataset/test/X_test.txt")[selectedFeatures]
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test_subject, test_activity, test_dat)

## Train dataset
train_dat <- read.table("UCI HAR Dataset/train/X_train.txt")[selectedFeatures]
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train_subject, train_activity, train_dat)

## Merge two datasets together
tidy <- rbind(test, train)

## Give descriptive names to activities
activityNames <-
    c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")

##Give tidy names for features
featureNames <- features[selectedFeatures,2]
featureNames <- gsub("^t", "Time", featureNames)
featureNames <- gsub("^f", "Frequency", featureNames)
featureNames <- gsub("-mean", "Mean", featureNames)
featureNames <- gsub("-std", "StdDev", featureNames)
featureNames <- gsub("-", "", featureNames)
featureNames <- gsub("\\(\\)", "", featureNames)
featureNames <- gsub("BodyBody", "Body", featureNames)

## Assign tidy names to variables
colnames(tidy) <- c("Subject", "Activity", featureNames)
tidy$Activity <- activityNames[tidy$Activity]

## Create second independent tidy data set that gives the average for each
## variable for each subject and activity
library(plyr)
avgCols <- function(input) {colMeans(input[,-c(1,2)])}
tidyMeans <- ddply(tidy,.(Subject, Activity),avgCols)

## Write second tidy dataset to file
write.table(tidyMeans, "tidyMeans.txt", row.names=FALSE)

}