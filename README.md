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
