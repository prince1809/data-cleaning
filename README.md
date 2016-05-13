Getting and Cleaning Data: Coursera Project
===============================================
Author : Prince Kumar (https://github.com/prince1809/data-cleaning)

##Goal of the Project:
>One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

>Here are the data for the project:

>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

>You should create one R script called run_analysis.R that does the following.

> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names.
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
>Good luck!


Getting started
======================
##Preparing Environment
```
packages <- c("data.table")
sapply(packages, require, character.only=TRUE, quietly=TRUE)
```

### Files, Urls and Folders
```
dataUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dataFileName <- "data.zip"
dataDir <- "UCI HAR Dataset"
```

### Available Data files
1. features.txt
2. activity_labels.txt
3. subject_train.txt
4. y_train.txt
5. X_train.txt
6. subject_test.txt
7. y_test.txt
8. X_test.txt

Reading files and merge
-------------------------
#### Reading the data files
Readind the metadata files and storing them in `featureName` and `activityLabels`
```
featureNames <- read.table(file.path(dataDir,"features.txt"))
activityLabels <- read.table(file.path(dataDir,"activity_labels.txt"), header = FALSE)
```

####Traning Data
Reading the Training data for for `subject` and `activity` and `feature` data set
```
subjectTrain <- read.table(file.path(dataDir,"train","subject_train.txt"),header = FALSE)
activityTrain <- read.table(file.path(dataDir,"train","y_train.txt"),header = FALSE)
featuresTrain <- read.table(file.path(dataDir,"train","X_train.txt"),header = FALSE)
```

####Test Data
Reading the Test data for for `subject` and `activity` and `feature` data set
```
subjectTest <- read.table(file.path(dataDir,"test","subject_test.txt"),header = FALSE)
activityTest <- read.table(file.path(dataDir,"test","y_test.txt"),header = FALSE)
featuresTest <- read.table(file.path(dataDir,"test","X_test.txt"),header = FALSE)
```

###Merges the training and the test sets to create one data set.
Merging the training data and test data for `subject` , `activity` and `features` row wise.

```
subject <- rbind(subjectTrain,subjectTest)
activity <- rbind(activityTrain,activityTest)
features <- rbind(featuresTrain,featuresTest)
```

Naming the column name of datasets using the feature name feature datasets
```
colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
```
Combining the dataset column wise and making the complete dataset
```
cData <- cbind(features,activity,subject)
```

Extracts the datasets
------------------------
Condition to extract mean and standar deviation
```
columnWithMeanStd <- grep(".*Mean.*|.*Std.*", names(cData), ignore.case=TRUE)
```
Creating the subset with required condition and getting the subset of data
```
requiredColumns <- c(columnWithMeanStd, 562, 563)
extractedData <- cData[,requiredColumns]
```

Descriptive activity names
---------------------------
Using the activity label datasets for naming the activities in the dataset
```
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
  extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}
extractedData$Activity <- as.factor(extractedData$Activity)
```

Labeling the dataset with desciptive names
-------------------------------------------
```
names(extractedData) <- gsub("Acc","Accelerometer",names(extractedData))
names(extractedData) <- gsub("Gyro","Gyroscope",names(extractedData))
names(extractedData) <- gsub("BodyBody","Body",names(extractedData))
names(extractedData) <- gsub("Mag","Magnitude",names(extractedData))
names(extractedData) <- gsub("^t","Time",names(extractedData))
names(extractedData) <- gsub("^f","frequency",names(extractedData))
names(extractedData) <- gsub("-mean()","Mean",names(extractedData))
names(extractedData) <- gsub("-std()","STD",names(extractedData))
```
