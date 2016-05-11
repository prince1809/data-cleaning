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
packages <- c("data.table","reshape2")
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
dtSubjectTrain <- fread(file.path(dataDir,"train","subject_train.txt"))
dtSubjectTest <- fread(file.path(dataDir,"test","subject_test.txt"))

dtXTrain <- fread(file.path(dataDir,"train","X_train.txt"))
dtXTest <- fread(file.path(dataDir,"test","X_test.txt"))

dtYTrain <- data.table(read.table(file.path(dataDir,"train","y_train.txt")))
dtYTest <- data.table(read.table(file.path(dataDir,"test","y_test.txt")))

# 1. Merges the training and the test sets to create one data set.
dtSubject <- rbind(dtSubjectTrain,dtSubjectTest)
dtX       <- rbind(dtXTrain,dtXTest)
dtY       <- rbind(dtYTrain,dtYTest)
setnames(dtSubject,"V1","Subject")
setnames(dtY,"V1","Activity")

dtSubject <- cbind(dtSubject,dtY)
dt <- cbind(dtX,dtSubject)

setkey(dt,Subject,Activity)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
dtFeature <- data.table(read.table(file.path(dataDir,"features.txt")))
setnames(dtFeature, names(dtFeature), c("featureNum","featureName"))
dtFeature <- dtFeature[grepl("mean\\(\\)|std\\(\\)",featureName)]