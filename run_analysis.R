######################################################
#
#   Coursera Project: Getting and Cleaning Data
#   File Name: run_analysis.R
#   Author: Prince Kumar
#   Date  : 2016-06-11
#
#####################################################

#clean the workspace
rm(list=ls())
# Preparing the environment
packages <- c("data.table")
sapply(packages, require, character.only=TRUE, quietly=TRUE)

#Data Url
dataUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFileName <- "data.zip"
dataDir <- "UCI HAR Dataset"

#Downloading the data
if(!file.exists(dataFileName)){
  download.file(dataUrl,dataFileName) 
}

#Unzip the Data
if(!file.exists(dataDir)){
  unzip(dataFileName)
}


# Reading the data files
featureNames <- read.table(file.path(dataDir,"features.txt"))
activityLabels <- read.table(file.path(dataDir,"activity_labels.txt"), header = FALSE)

#Traning Data
subjectTrain <- read.table(file.path(dataDir,"train","subject_train.txt"),header = FALSE)
activityTrain <- read.table(file.path(dataDir,"train","y_train.txt"),header = FALSE)
featuresTrain <- read.table(file.path(dataDir,"train","X_train.txt"),header = FALSE)

#Test Data
subjectTest <- read.table(file.path(dataDir,"test","subject_test.txt"),header = FALSE)
activityTest <- read.table(file.path(dataDir,"test","y_test.txt"),header = FALSE)
featuresTest <- read.table(file.path(dataDir,"test","X_test.txt"),header = FALSE)

# 1. Merges the training and the test sets to create one data set.
subject <- rbind(subjectTrain,subjectTest)
activity <- rbind(activityTrain,activityTest)
features <- rbind(featuresTrain,featuresTest)

colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
cData <- cbind(features,activity,subject)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
columnWithMeanStd <- grep(".*Mean.*|.*Std.*", names(cData), ignore.case=TRUE)
requiredColumns <- c(columnWithMeanStd, 562, 563)
extractedData <- cData[,requiredColumns]

# 3. Uses descriptive activity names to name the activities in the data set
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
  extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}
extractedData$Activity <- as.factor(extractedData$Activity)


# 4. Appropriately labels the data set with descriptive variable names.
names(extractedData) <- gsub("Acc","Accelerometer",names(extractedData))
names(extractedData) <- gsub("Gyro","Gyroscope",names(extractedData))
names(extractedData) <- gsub("BodyBody","Body",names(extractedData))
names(extractedData) <- gsub("Mag","Magnitude",names(extractedData))
names(extractedData) <- gsub("^t","Time",names(extractedData))
names(extractedData) <- gsub("^f","frequency",names(extractedData))
names(extractedData) <- gsub("-mean()","Mean",names(extractedData))
names(extractedData) <- gsub("-std()","STD",names(extractedData))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)
tidyData <- aggregate(. ~ Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy.txt", row.names = FALSE)