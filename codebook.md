Codebook
==============
This codebook was generated on 2016-05-13 23:15:32

Variables List and Descriptions
----------------------------------

Variable Name | Description
--------------|------------
Subject       | Id of the sample who carried out activity
Activity      | Activity Name


1.Merges the training and the test sets to create one data set.
----------------------------------------------------------------
###Structure of the Merged Dataset


```r
str(cData)
```

```
## 'data.frame':	10299 obs. of  563 variables:
##  $ tBodyAcc-mean()-X                   : num  0.289 0.278 0.28 0.279 0.277 ...
##  $ tBodyAcc-mean()-Y                   : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
##  $ tBodyAcc-mean()-Z                   : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
##  $ tBodyAcc-std()-X                    : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
##  $ tBodyAcc-std()-Y                    : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
##  $ tBodyAcc-std()-Z                    : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
##  $ tBodyAcc-mad()-X                    : num  -0.995 -0.999 -0.997 -0.997 -0.998 ...
##  $ tBodyAcc-mad()-Y                    : num  -0.983 -0.975 -0.964 -0.983 -0.98 ...
##  $ tBodyAcc-mad()-Z                    : num  -0.924 -0.958 -0.977 -0.989 -0.99 ...
##  $ tBodyAcc-max()-X                    : num  -0.935 -0.943 -0.939 -0.939 -0.942 ...
##  $ tBodyAcc-max()-Y                    : num  -0.567 -0.558 -0.558 -0.576 -0.569 ...
##  $ tBodyAcc-max()-Z                    : num  -0.744 -0.818 -0.818 -0.83 -0.825 ...
##  $ tBodyAcc-min()-X                    : num  0.853 0.849 0.844 0.844 0.849 ...
##  $ tBodyAcc-min()-Y                    : num  0.686 0.686 0.682 0.682 0.683 ...
##  $ tBodyAcc-min()-Z                    : num  0.814 0.823 0.839 0.838 0.838 ...
##  $ tBodyAcc-sma()                      : num  -0.966 -0.982 -0.983 -0.986 -0.993 ...
##  $ tBodyAcc-energy()-X                 : num  -1 -1 -1 -1 -1 ...
##  $ tBodyAcc-energy()-Y                 : num  -1 -1 -1 -1 -1 ...
##  $ tBodyAcc-energy()-Z                 : num  -0.995 -0.998 -0.999 -1 -1 ...
##  $ tBodyAcc-iqr()-X                    : num  -0.994 -0.999 -0.997 -0.997 -0.998 ...
##  $ tBodyAcc-iqr()-Y                    : num  -0.988 -0.978 -0.965 -0.984 -0.981 ...
##  $ tBodyAcc-iqr()-Z                    : num  -0.943 -0.948 -0.975 -0.986 -0.991 ...
##  $ tBodyAcc-entropy()-X                : num  -0.408 -0.715 -0.592 -0.627 -0.787 ...
##  $ tBodyAcc-entropy()-Y                : num  -0.679 -0.501 -0.486 -0.851 -0.559 ...
##  $ tBodyAcc-entropy()-Z                : num  -0.602 -0.571 -0.571 -0.912 -0.761 ...
##  $ tBodyAcc-arCoeff()-X,1              : num  0.9293 0.6116 0.273 0.0614 0.3133 ...
##  $ tBodyAcc-arCoeff()-X,2              : num  -0.853 -0.3295 -0.0863 0.0748 -0.1312 ...
##  $ tBodyAcc-arCoeff()-X,3              : num  0.36 0.284 0.337 0.198 0.191 ...
##  $ tBodyAcc-arCoeff()-X,4              : num  -0.0585 0.2846 -0.1647 -0.2643 0.0869 ...
##  $ tBodyAcc-arCoeff()-Y,1              : num  0.2569 0.1157 0.0172 0.0725 0.2576 ...
##  $ tBodyAcc-arCoeff()-Y,2              : num  -0.2248 -0.091 -0.0745 -0.1553 -0.2725 ...
##  $ tBodyAcc-arCoeff()-Y,3              : num  0.264 0.294 0.342 0.323 0.435 ...
##  $ tBodyAcc-arCoeff()-Y,4              : num  -0.0952 -0.2812 -0.3326 -0.1708 -0.3154 ...
##  $ tBodyAcc-arCoeff()-Z,1              : num  0.279 0.086 0.239 0.295 0.44 ...
##  $ tBodyAcc-arCoeff()-Z,2              : num  -0.4651 -0.0222 -0.1362 -0.3061 -0.2691 ...
##  $ tBodyAcc-arCoeff()-Z,3              : num  0.4919 -0.0167 0.1739 0.4821 0.1794 ...
##  $ tBodyAcc-arCoeff()-Z,4              : num  -0.191 -0.221 -0.299 -0.47 -0.089 ...
##  $ tBodyAcc-correlation()-X,Y          : num  0.3763 -0.0134 -0.1247 -0.3057 -0.1558 ...
##  $ tBodyAcc-correlation()-X,Z          : num  0.4351 -0.0727 -0.1811 -0.3627 -0.1898 ...
##  $ tBodyAcc-correlation()-Y,Z          : num  0.661 0.579 0.609 0.507 0.599 ...
##  $ tGravityAcc-mean()-X                : num  0.963 0.967 0.967 0.968 0.968 ...
##  $ tGravityAcc-mean()-Y                : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
##  $ tGravityAcc-mean()-Z                : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
##  $ tGravityAcc-std()-X                 : num  -0.985 -0.997 -1 -0.997 -0.998 ...
##  $ tGravityAcc-std()-Y                 : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
##  $ tGravityAcc-std()-Z                 : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
##  $ tGravityAcc-mad()-X                 : num  -0.985 -0.998 -1 -0.996 -0.998 ...
##  $ tGravityAcc-mad()-Y                 : num  -0.984 -0.99 -0.993 -0.981 -0.989 ...
##  $ tGravityAcc-mad()-Z                 : num  -0.895 -0.933 -0.993 -0.978 -0.979 ...
##  $ tGravityAcc-max()-X                 : num  0.892 0.892 0.892 0.894 0.894 ...
##  $ tGravityAcc-max()-Y                 : num  -0.161 -0.161 -0.164 -0.164 -0.167 ...
##  $ tGravityAcc-max()-Z                 : num  0.1247 0.1226 0.0946 0.0934 0.0917 ...
##  $ tGravityAcc-min()-X                 : num  0.977 0.985 0.987 0.987 0.987 ...
##  $ tGravityAcc-min()-Y                 : num  -0.123 -0.115 -0.115 -0.121 -0.122 ...
##  $ tGravityAcc-min()-Z                 : num  0.0565 0.1028 0.1028 0.0958 0.0941 ...
##  $ tGravityAcc-sma()                   : num  -0.375 -0.383 -0.402 -0.4 -0.4 ...
##  $ tGravityAcc-energy()-X              : num  0.899 0.908 0.909 0.911 0.912 ...
##  $ tGravityAcc-energy()-Y              : num  -0.971 -0.971 -0.97 -0.969 -0.967 ...
##  $ tGravityAcc-energy()-Z              : num  -0.976 -0.979 -0.982 -0.982 -0.984 ...
##  $ tGravityAcc-iqr()-X                 : num  -0.984 -0.999 -1 -0.996 -0.998 ...
##  $ tGravityAcc-iqr()-Y                 : num  -0.989 -0.99 -0.992 -0.981 -0.991 ...
##  $ tGravityAcc-iqr()-Z                 : num  -0.918 -0.942 -0.993 -0.98 -0.98 ...
##  $ tGravityAcc-entropy()-X             : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
##  $ tGravityAcc-entropy()-Y             : num  -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 ...
##  $ tGravityAcc-entropy()-Z             : num  0.114 -0.21 -0.927 -0.596 -0.617 ...
##  $ tGravityAcc-arCoeff()-X,1           : num  -0.59042 -0.41006 0.00223 -0.06493 -0.25727 ...
##  $ tGravityAcc-arCoeff()-X,2           : num  0.5911 0.4139 0.0275 0.0754 0.2689 ...
##  $ tGravityAcc-arCoeff()-X,3           : num  -0.5918 -0.4176 -0.0567 -0.0858 -0.2807 ...
##  $ tGravityAcc-arCoeff()-X,4           : num  0.5925 0.4213 0.0855 0.0962 0.2926 ...
##  $ tGravityAcc-arCoeff()-Y,1           : num  -0.745 -0.196 -0.329 -0.295 -0.167 ...
##  $ tGravityAcc-arCoeff()-Y,2           : num  0.7209 0.1253 0.2705 0.2283 0.0899 ...
##  $ tGravityAcc-arCoeff()-Y,3           : num  -0.7124 -0.1056 -0.2545 -0.2063 -0.0663 ...
##  $ tGravityAcc-arCoeff()-Y,4           : num  0.7113 0.1091 0.2576 0.2048 0.0671 ...
##  $ tGravityAcc-arCoeff()-Z,1           : num  -0.995 -0.834 -0.705 -0.385 -0.237 ...
##  $ tGravityAcc-arCoeff()-Z,2           : num  0.996 0.834 0.714 0.386 0.239 ...
##  $ tGravityAcc-arCoeff()-Z,3           : num  -0.996 -0.834 -0.723 -0.387 -0.241 ...
##  $ tGravityAcc-arCoeff()-Z,4           : num  0.992 0.83 0.729 0.385 0.241 ...
##  $ tGravityAcc-correlation()-X,Y       : num  0.57 -0.831 -0.181 -0.991 -0.408 ...
##  $ tGravityAcc-correlation()-X,Z       : num  0.439 -0.866 0.338 -0.969 -0.185 ...
##  $ tGravityAcc-correlation()-Y,Z       : num  0.987 0.974 0.643 0.984 0.965 ...
##  $ tBodyAccJerk-mean()-X               : num  0.078 0.074 0.0736 0.0773 0.0734 ...
##  $ tBodyAccJerk-mean()-Y               : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
##  $ tBodyAccJerk-mean()-Z               : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
##  $ tBodyAccJerk-std()-X                : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
##  $ tBodyAccJerk-std()-Y                : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
##  $ tBodyAccJerk-std()-Z                : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
##  $ tBodyAccJerk-mad()-X                : num  -0.994 -0.996 -0.991 -0.994 -0.997 ...
##  $ tBodyAccJerk-mad()-Y                : num  -0.986 -0.979 -0.979 -0.986 -0.987 ...
##  $ tBodyAccJerk-mad()-Z                : num  -0.993 -0.991 -0.987 -0.991 -0.991 ...
##  $ tBodyAccJerk-max()-X                : num  -0.985 -0.995 -0.987 -0.987 -0.997 ...
##  $ tBodyAccJerk-max()-Y                : num  -0.992 -0.979 -0.979 -0.992 -0.992 ...
##  $ tBodyAccJerk-max()-Z                : num  -0.993 -0.992 -0.992 -0.99 -0.99 ...
##  $ tBodyAccJerk-min()-X                : num  0.99 0.993 0.988 0.988 0.994 ...
##  $ tBodyAccJerk-min()-Y                : num  0.992 0.992 0.992 0.993 0.993 ...
##  $ tBodyAccJerk-min()-Z                : num  0.991 0.989 0.989 0.993 0.986 ...
##  $ tBodyAccJerk-sma()                  : num  -0.994 -0.991 -0.988 -0.993 -0.994 ...
##  $ tBodyAccJerk-energy()-X             : num  -1 -1 -1 -1 -1 ...
##  $ tBodyAccJerk-energy()-Y             : num  -1 -1 -1 -1 -1 ...
##  $ tBodyAccJerk-energy()-Z             : num  -1 -1 -1 -1 -1 ...
##   [list output truncated]
```

2. Extracts only the measurements on the mean.....
-----------------------------------------------------------------------
###Names of extracted Data:

```r
names(extractedData)
```

```
##  [1] "TimeBodyAccelerometerMean()-X"                    
##  [2] "TimeBodyAccelerometerMean()-Y"                    
##  [3] "TimeBodyAccelerometerMean()-Z"                    
##  [4] "TimeBodyAccelerometerSTD()-X"                     
##  [5] "TimeBodyAccelerometerSTD()-Y"                     
##  [6] "TimeBodyAccelerometerSTD()-Z"                     
##  [7] "TimeGravityAccelerometerMean()-X"                 
##  [8] "TimeGravityAccelerometerMean()-Y"                 
##  [9] "TimeGravityAccelerometerMean()-Z"                 
## [10] "TimeGravityAccelerometerSTD()-X"                  
## [11] "TimeGravityAccelerometerSTD()-Y"                  
## [12] "TimeGravityAccelerometerSTD()-Z"                  
## [13] "TimeBodyAccelerometerJerkMean()-X"                
## [14] "TimeBodyAccelerometerJerkMean()-Y"                
## [15] "TimeBodyAccelerometerJerkMean()-Z"                
## [16] "TimeBodyAccelerometerJerkSTD()-X"                 
## [17] "TimeBodyAccelerometerJerkSTD()-Y"                 
## [18] "TimeBodyAccelerometerJerkSTD()-Z"                 
## [19] "TimeBodyGyroscopeMean()-X"                        
## [20] "TimeBodyGyroscopeMean()-Y"                        
## [21] "TimeBodyGyroscopeMean()-Z"                        
## [22] "TimeBodyGyroscopeSTD()-X"                         
## [23] "TimeBodyGyroscopeSTD()-Y"                         
## [24] "TimeBodyGyroscopeSTD()-Z"                         
## [25] "TimeBodyGyroscopeJerkMean()-X"                    
## [26] "TimeBodyGyroscopeJerkMean()-Y"                    
## [27] "TimeBodyGyroscopeJerkMean()-Z"                    
## [28] "TimeBodyGyroscopeJerkSTD()-X"                     
## [29] "TimeBodyGyroscopeJerkSTD()-Y"                     
## [30] "TimeBodyGyroscopeJerkSTD()-Z"                     
## [31] "TimeBodyAccelerometerMagnitudeMean()"             
## [32] "TimeBodyAccelerometerMagnitudeSTD()"              
## [33] "TimeGravityAccelerometerMagnitudeMean()"          
## [34] "TimeGravityAccelerometerMagnitudeSTD()"           
## [35] "TimeBodyAccelerometerJerkMagnitudeMean()"         
## [36] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
## [37] "TimeBodyGyroscopeMagnitudeMean()"                 
## [38] "TimeBodyGyroscopeMagnitudeSTD()"                  
## [39] "TimeBodyGyroscopeJerkMagnitudeMean()"             
## [40] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
## [41] "frequencyBodyAccelerometerMean()-X"               
## [42] "frequencyBodyAccelerometerMean()-Y"               
## [43] "frequencyBodyAccelerometerMean()-Z"               
## [44] "frequencyBodyAccelerometerSTD()-X"                
## [45] "frequencyBodyAccelerometerSTD()-Y"                
## [46] "frequencyBodyAccelerometerSTD()-Z"                
## [47] "frequencyBodyAccelerometerMeanFreq()-X"           
## [48] "frequencyBodyAccelerometerMeanFreq()-Y"           
## [49] "frequencyBodyAccelerometerMeanFreq()-Z"           
## [50] "frequencyBodyAccelerometerJerkMean()-X"           
## [51] "frequencyBodyAccelerometerJerkMean()-Y"           
## [52] "frequencyBodyAccelerometerJerkMean()-Z"           
## [53] "frequencyBodyAccelerometerJerkSTD()-X"            
## [54] "frequencyBodyAccelerometerJerkSTD()-Y"            
## [55] "frequencyBodyAccelerometerJerkSTD()-Z"            
## [56] "frequencyBodyAccelerometerJerkMeanFreq()-X"       
## [57] "frequencyBodyAccelerometerJerkMeanFreq()-Y"       
## [58] "frequencyBodyAccelerometerJerkMeanFreq()-Z"       
## [59] "frequencyBodyGyroscopeMean()-X"                   
## [60] "frequencyBodyGyroscopeMean()-Y"                   
## [61] "frequencyBodyGyroscopeMean()-Z"                   
## [62] "frequencyBodyGyroscopeSTD()-X"                    
## [63] "frequencyBodyGyroscopeSTD()-Y"                    
## [64] "frequencyBodyGyroscopeSTD()-Z"                    
## [65] "frequencyBodyGyroscopeMeanFreq()-X"               
## [66] "frequencyBodyGyroscopeMeanFreq()-Y"               
## [67] "frequencyBodyGyroscopeMeanFreq()-Z"               
## [68] "frequencyBodyAccelerometerMagnitudeMean()"        
## [69] "frequencyBodyAccelerometerMagnitudeSTD()"         
## [70] "frequencyBodyAccelerometerMagnitudeMeanFreq()"    
## [71] "frequencyBodyAccelerometerJerkMagnitudeMean()"    
## [72] "frequencyBodyAccelerometerJerkMagnitudeSTD()"     
## [73] "frequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
## [74] "frequencyBodyGyroscopeMagnitudeMean()"            
## [75] "frequencyBodyGyroscopeMagnitudeSTD()"             
## [76] "frequencyBodyGyroscopeMagnitudeMeanFreq()"        
## [77] "frequencyBodyGyroscopeJerkMagnitudeMean()"        
## [78] "frequencyBodyGyroscopeJerkMagnitudeSTD()"         
## [79] "frequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
## [80] "angle(tBodyAccelerometerMean,gravity)"            
## [81] "angle(tBodyAccelerometerJerkMean),gravityMean)"   
## [82] "angle(tBodyGyroscopeMean,gravityMean)"            
## [83] "angle(tBodyGyroscopeJerkMean,gravityMean)"        
## [84] "angle(X,gravityMean)"                             
## [85] "angle(Y,gravityMean)"                             
## [86] "angle(Z,gravityMean)"                             
## [87] "Activity"                                         
## [88] "Subject"
```

3. Uses descriptive activity names
-----------------------------------
###Activity Column of the Data

```r
head(extractedData$Activity,100)
```

```
##   [1] STANDING STANDING STANDING STANDING STANDING STANDING STANDING
##   [8] STANDING STANDING STANDING STANDING STANDING STANDING STANDING
##  [15] STANDING STANDING STANDING STANDING STANDING STANDING STANDING
##  [22] STANDING STANDING STANDING STANDING STANDING STANDING SITTING 
##  [29] SITTING  SITTING  SITTING  SITTING  SITTING  SITTING  SITTING 
##  [36] SITTING  SITTING  SITTING  SITTING  SITTING  SITTING  SITTING 
##  [43] SITTING  SITTING  SITTING  SITTING  SITTING  SITTING  SITTING 
##  [50] SITTING  SITTING  LAYING   LAYING   LAYING   LAYING   LAYING  
##  [57] LAYING   LAYING   LAYING   LAYING   LAYING   LAYING   LAYING  
##  [64] LAYING   LAYING   LAYING   LAYING   LAYING   LAYING   LAYING  
##  [71] LAYING   LAYING   LAYING   LAYING   LAYING   LAYING   LAYING  
##  [78] LAYING   WALKING  WALKING  WALKING  WALKING  WALKING  WALKING 
##  [85] WALKING  WALKING  WALKING  WALKING  WALKING  WALKING  WALKING 
##  [92] WALKING  WALKING  WALKING  WALKING  WALKING  WALKING  WALKING 
##  [99] WALKING  WALKING 
## 6 Levels: LAYING SITTING STANDING WALKING ... WALKING_UPSTAIRS
```

4. Appropriately labels the data set....
----------------------------------------
###Labeled Datasets

```r
names(extractedData)
```

```
##  [1] "TimeBodyAccelerometerMean()-X"                    
##  [2] "TimeBodyAccelerometerMean()-Y"                    
##  [3] "TimeBodyAccelerometerMean()-Z"                    
##  [4] "TimeBodyAccelerometerSTD()-X"                     
##  [5] "TimeBodyAccelerometerSTD()-Y"                     
##  [6] "TimeBodyAccelerometerSTD()-Z"                     
##  [7] "TimeGravityAccelerometerMean()-X"                 
##  [8] "TimeGravityAccelerometerMean()-Y"                 
##  [9] "TimeGravityAccelerometerMean()-Z"                 
## [10] "TimeGravityAccelerometerSTD()-X"                  
## [11] "TimeGravityAccelerometerSTD()-Y"                  
## [12] "TimeGravityAccelerometerSTD()-Z"                  
## [13] "TimeBodyAccelerometerJerkMean()-X"                
## [14] "TimeBodyAccelerometerJerkMean()-Y"                
## [15] "TimeBodyAccelerometerJerkMean()-Z"                
## [16] "TimeBodyAccelerometerJerkSTD()-X"                 
## [17] "TimeBodyAccelerometerJerkSTD()-Y"                 
## [18] "TimeBodyAccelerometerJerkSTD()-Z"                 
## [19] "TimeBodyGyroscopeMean()-X"                        
## [20] "TimeBodyGyroscopeMean()-Y"                        
## [21] "TimeBodyGyroscopeMean()-Z"                        
## [22] "TimeBodyGyroscopeSTD()-X"                         
## [23] "TimeBodyGyroscopeSTD()-Y"                         
## [24] "TimeBodyGyroscopeSTD()-Z"                         
## [25] "TimeBodyGyroscopeJerkMean()-X"                    
## [26] "TimeBodyGyroscopeJerkMean()-Y"                    
## [27] "TimeBodyGyroscopeJerkMean()-Z"                    
## [28] "TimeBodyGyroscopeJerkSTD()-X"                     
## [29] "TimeBodyGyroscopeJerkSTD()-Y"                     
## [30] "TimeBodyGyroscopeJerkSTD()-Z"                     
## [31] "TimeBodyAccelerometerMagnitudeMean()"             
## [32] "TimeBodyAccelerometerMagnitudeSTD()"              
## [33] "TimeGravityAccelerometerMagnitudeMean()"          
## [34] "TimeGravityAccelerometerMagnitudeSTD()"           
## [35] "TimeBodyAccelerometerJerkMagnitudeMean()"         
## [36] "TimeBodyAccelerometerJerkMagnitudeSTD()"          
## [37] "TimeBodyGyroscopeMagnitudeMean()"                 
## [38] "TimeBodyGyroscopeMagnitudeSTD()"                  
## [39] "TimeBodyGyroscopeJerkMagnitudeMean()"             
## [40] "TimeBodyGyroscopeJerkMagnitudeSTD()"              
## [41] "frequencyBodyAccelerometerMean()-X"               
## [42] "frequencyBodyAccelerometerMean()-Y"               
## [43] "frequencyBodyAccelerometerMean()-Z"               
## [44] "frequencyBodyAccelerometerSTD()-X"                
## [45] "frequencyBodyAccelerometerSTD()-Y"                
## [46] "frequencyBodyAccelerometerSTD()-Z"                
## [47] "frequencyBodyAccelerometerMeanFreq()-X"           
## [48] "frequencyBodyAccelerometerMeanFreq()-Y"           
## [49] "frequencyBodyAccelerometerMeanFreq()-Z"           
## [50] "frequencyBodyAccelerometerJerkMean()-X"           
## [51] "frequencyBodyAccelerometerJerkMean()-Y"           
## [52] "frequencyBodyAccelerometerJerkMean()-Z"           
## [53] "frequencyBodyAccelerometerJerkSTD()-X"            
## [54] "frequencyBodyAccelerometerJerkSTD()-Y"            
## [55] "frequencyBodyAccelerometerJerkSTD()-Z"            
## [56] "frequencyBodyAccelerometerJerkMeanFreq()-X"       
## [57] "frequencyBodyAccelerometerJerkMeanFreq()-Y"       
## [58] "frequencyBodyAccelerometerJerkMeanFreq()-Z"       
## [59] "frequencyBodyGyroscopeMean()-X"                   
## [60] "frequencyBodyGyroscopeMean()-Y"                   
## [61] "frequencyBodyGyroscopeMean()-Z"                   
## [62] "frequencyBodyGyroscopeSTD()-X"                    
## [63] "frequencyBodyGyroscopeSTD()-Y"                    
## [64] "frequencyBodyGyroscopeSTD()-Z"                    
## [65] "frequencyBodyGyroscopeMeanFreq()-X"               
## [66] "frequencyBodyGyroscopeMeanFreq()-Y"               
## [67] "frequencyBodyGyroscopeMeanFreq()-Z"               
## [68] "frequencyBodyAccelerometerMagnitudeMean()"        
## [69] "frequencyBodyAccelerometerMagnitudeSTD()"         
## [70] "frequencyBodyAccelerometerMagnitudeMeanFreq()"    
## [71] "frequencyBodyAccelerometerJerkMagnitudeMean()"    
## [72] "frequencyBodyAccelerometerJerkMagnitudeSTD()"     
## [73] "frequencyBodyAccelerometerJerkMagnitudeMeanFreq()"
## [74] "frequencyBodyGyroscopeMagnitudeMean()"            
## [75] "frequencyBodyGyroscopeMagnitudeSTD()"             
## [76] "frequencyBodyGyroscopeMagnitudeMeanFreq()"        
## [77] "frequencyBodyGyroscopeJerkMagnitudeMean()"        
## [78] "frequencyBodyGyroscopeJerkMagnitudeSTD()"         
## [79] "frequencyBodyGyroscopeJerkMagnitudeMeanFreq()"    
## [80] "angle(tBodyAccelerometerMean,gravity)"            
## [81] "angle(tBodyAccelerometerJerkMean),gravityMean)"   
## [82] "angle(tBodyGyroscopeMean,gravityMean)"            
## [83] "angle(tBodyGyroscopeJerkMean,gravityMean)"        
## [84] "angle(X,gravityMean)"                             
## [85] "angle(Y,gravityMean)"                             
## [86] "angle(Z,gravityMean)"                             
## [87] "Activity"                                         
## [88] "Subject"
```

5. Summary of datasets with tidyData
-------------------------------------


```r
summary(tidyData)
```

```
##     Subject                  Activity  TimeBodyAccelerometerMean()-X
##  1      :  6   LAYING            :30   Min.   :0.2216               
##  2      :  6   SITTING           :30   1st Qu.:0.2712               
##  3      :  6   STANDING          :30   Median :0.2770               
##  4      :  6   WALKING           :30   Mean   :0.2743               
##  5      :  6   WALKING_DOWNSTAIRS:30   3rd Qu.:0.2800               
##  6      :  6   WALKING_UPSTAIRS  :30   Max.   :0.3015               
##  (Other):144                                                        
##  TimeBodyAccelerometerMean()-Y TimeBodyAccelerometerMean()-Z
##  Min.   :-0.040514             Min.   :-0.15251             
##  1st Qu.:-0.020022             1st Qu.:-0.11207             
##  Median :-0.017262             Median :-0.10819             
##  Mean   :-0.017876             Mean   :-0.10916             
##  3rd Qu.:-0.014936             3rd Qu.:-0.10443             
##  Max.   :-0.001308             Max.   :-0.07538             
##                                                             
##  TimeBodyAccelerometerSTD()-X TimeBodyAccelerometerSTD()-Y
##  Min.   :-0.9961              Min.   :-0.99024            
##  1st Qu.:-0.9799              1st Qu.:-0.94205            
##  Median :-0.7526              Median :-0.50897            
##  Mean   :-0.5577              Mean   :-0.46046            
##  3rd Qu.:-0.1984              3rd Qu.:-0.03077            
##  Max.   : 0.6269              Max.   : 0.61694            
##                                                           
##  TimeBodyAccelerometerSTD()-Z TimeGravityAccelerometerMean()-X
##  Min.   :-0.9877              Min.   :-0.6800                 
##  1st Qu.:-0.9498              1st Qu.: 0.8376                 
##  Median :-0.6518              Median : 0.9208                 
##  Mean   :-0.5756              Mean   : 0.6975                 
##  3rd Qu.:-0.2306              3rd Qu.: 0.9425                 
##  Max.   : 0.6090              Max.   : 0.9745                 
##                                                               
##  TimeGravityAccelerometerMean()-Y TimeGravityAccelerometerMean()-Z
##  Min.   :-0.47989                 Min.   :-0.49509                
##  1st Qu.:-0.23319                 1st Qu.:-0.11726                
##  Median :-0.12782                 Median : 0.02384                
##  Mean   :-0.01621                 Mean   : 0.07413                
##  3rd Qu.: 0.08773                 3rd Qu.: 0.14946                
##  Max.   : 0.95659                 Max.   : 0.95787                
##                                                                   
##  TimeGravityAccelerometerSTD()-X TimeGravityAccelerometerSTD()-Y
##  Min.   :-0.9968                 Min.   :-0.9942                
##  1st Qu.:-0.9825                 1st Qu.:-0.9711                
##  Median :-0.9695                 Median :-0.9590                
##  Mean   :-0.9638                 Mean   :-0.9524                
##  3rd Qu.:-0.9509                 3rd Qu.:-0.9370                
##  Max.   :-0.8296                 Max.   :-0.6436                
##                                                                 
##  TimeGravityAccelerometerSTD()-Z TimeBodyAccelerometerJerkMean()-X
##  Min.   :-0.9910                 Min.   :0.04269                  
##  1st Qu.:-0.9605                 1st Qu.:0.07396                  
##  Median :-0.9450                 Median :0.07640                  
##  Mean   :-0.9364                 Mean   :0.07947                  
##  3rd Qu.:-0.9180                 3rd Qu.:0.08330                  
##  Max.   :-0.6102                 Max.   :0.13019                  
##                                                                   
##  TimeBodyAccelerometerJerkMean()-Y TimeBodyAccelerometerJerkMean()-Z
##  Min.   :-0.0386872                Min.   :-0.067458                
##  1st Qu.: 0.0004664                1st Qu.:-0.010601                
##  Median : 0.0094698                Median :-0.003861                
##  Mean   : 0.0075652                Mean   :-0.004953                
##  3rd Qu.: 0.0134008                3rd Qu.: 0.001958                
##  Max.   : 0.0568186                Max.   : 0.038053                
##                                                                     
##  TimeBodyAccelerometerJerkSTD()-X TimeBodyAccelerometerJerkSTD()-Y
##  Min.   :-0.9946                  Min.   :-0.9895                 
##  1st Qu.:-0.9832                  1st Qu.:-0.9724                 
##  Median :-0.8104                  Median :-0.7756                 
##  Mean   :-0.5949                  Mean   :-0.5654                 
##  3rd Qu.:-0.2233                  3rd Qu.:-0.1483                 
##  Max.   : 0.5443                  Max.   : 0.3553                 
##                                                                   
##  TimeBodyAccelerometerJerkSTD()-Z TimeBodyGyroscopeMean()-X
##  Min.   :-0.99329                 Min.   :-0.20578         
##  1st Qu.:-0.98266                 1st Qu.:-0.04712         
##  Median :-0.88366                 Median :-0.02871         
##  Mean   :-0.73596                 Mean   :-0.03244         
##  3rd Qu.:-0.51212                 3rd Qu.:-0.01676         
##  Max.   : 0.03102                 Max.   : 0.19270         
##                                                            
##  TimeBodyGyroscopeMean()-Y TimeBodyGyroscopeMean()-Z
##  Min.   :-0.20421          Min.   :-0.07245         
##  1st Qu.:-0.08955          1st Qu.: 0.07475         
##  Median :-0.07318          Median : 0.08512         
##  Mean   :-0.07426          Mean   : 0.08744         
##  3rd Qu.:-0.06113          3rd Qu.: 0.10177         
##  Max.   : 0.02747          Max.   : 0.17910         
##                                                     
##  TimeBodyGyroscopeSTD()-X TimeBodyGyroscopeSTD()-Y
##  Min.   :-0.9943          Min.   :-0.9942         
##  1st Qu.:-0.9735          1st Qu.:-0.9629         
##  Median :-0.7890          Median :-0.8017         
##  Mean   :-0.6916          Mean   :-0.6533         
##  3rd Qu.:-0.4414          3rd Qu.:-0.4196         
##  Max.   : 0.2677          Max.   : 0.4765         
##                                                   
##  TimeBodyGyroscopeSTD()-Z TimeBodyGyroscopeJerkMean()-X
##  Min.   :-0.9855          Min.   :-0.15721             
##  1st Qu.:-0.9609          1st Qu.:-0.10322             
##  Median :-0.8010          Median :-0.09868             
##  Mean   :-0.6164          Mean   :-0.09606             
##  3rd Qu.:-0.3106          3rd Qu.:-0.09110             
##  Max.   : 0.5649          Max.   :-0.02209             
##                                                        
##  TimeBodyGyroscopeJerkMean()-Y TimeBodyGyroscopeJerkMean()-Z
##  Min.   :-0.07681              Min.   :-0.092500            
##  1st Qu.:-0.04552              1st Qu.:-0.061725            
##  Median :-0.04112              Median :-0.053430            
##  Mean   :-0.04269              Mean   :-0.054802            
##  3rd Qu.:-0.03842              3rd Qu.:-0.048985            
##  Max.   :-0.01320              Max.   :-0.006941            
##                                                             
##  TimeBodyGyroscopeJerkSTD()-X TimeBodyGyroscopeJerkSTD()-Y
##  Min.   :-0.9965              Min.   :-0.9971             
##  1st Qu.:-0.9800              1st Qu.:-0.9832             
##  Median :-0.8396              Median :-0.8942             
##  Mean   :-0.7036              Mean   :-0.7636             
##  3rd Qu.:-0.4629              3rd Qu.:-0.5861             
##  Max.   : 0.1791              Max.   : 0.2959             
##                                                           
##  TimeBodyGyroscopeJerkSTD()-Z TimeBodyAccelerometerMagnitudeMean()
##  Min.   :-0.9954              Min.   :-0.9865                     
##  1st Qu.:-0.9848              1st Qu.:-0.9573                     
##  Median :-0.8610              Median :-0.4829                     
##  Mean   :-0.7096              Mean   :-0.4973                     
##  3rd Qu.:-0.4741              3rd Qu.:-0.0919                     
##  Max.   : 0.1932              Max.   : 0.6446                     
##                                                                   
##  TimeBodyAccelerometerMagnitudeSTD()
##  Min.   :-0.9865                    
##  1st Qu.:-0.9430                    
##  Median :-0.6074                    
##  Mean   :-0.5439                    
##  3rd Qu.:-0.2090                    
##  Max.   : 0.4284                    
##                                     
##  TimeGravityAccelerometerMagnitudeMean()
##  Min.   :-0.9865                        
##  1st Qu.:-0.9573                        
##  Median :-0.4829                        
##  Mean   :-0.4973                        
##  3rd Qu.:-0.0919                        
##  Max.   : 0.6446                        
##                                         
##  TimeGravityAccelerometerMagnitudeSTD()
##  Min.   :-0.9865                       
##  1st Qu.:-0.9430                       
##  Median :-0.6074                       
##  Mean   :-0.5439                       
##  3rd Qu.:-0.2090                       
##  Max.   : 0.4284                       
##                                        
##  TimeBodyAccelerometerJerkMagnitudeMean()
##  Min.   :-0.9928                         
##  1st Qu.:-0.9807                         
##  Median :-0.8168                         
##  Mean   :-0.6079                         
##  3rd Qu.:-0.2456                         
##  Max.   : 0.4345                         
##                                          
##  TimeBodyAccelerometerJerkMagnitudeSTD() TimeBodyGyroscopeMagnitudeMean()
##  Min.   :-0.9946                         Min.   :-0.9807                 
##  1st Qu.:-0.9765                         1st Qu.:-0.9461                 
##  Median :-0.8014                         Median :-0.6551                 
##  Mean   :-0.5842                         Mean   :-0.5652                 
##  3rd Qu.:-0.2173                         3rd Qu.:-0.2159                 
##  Max.   : 0.4506                         Max.   : 0.4180                 
##                                                                          
##  TimeBodyGyroscopeMagnitudeSTD() TimeBodyGyroscopeJerkMagnitudeMean()
##  Min.   :-0.9814                 Min.   :-0.99732                    
##  1st Qu.:-0.9476                 1st Qu.:-0.98515                    
##  Median :-0.7420                 Median :-0.86479                    
##  Mean   :-0.6304                 Mean   :-0.73637                    
##  3rd Qu.:-0.3602                 3rd Qu.:-0.51186                    
##  Max.   : 0.3000                 Max.   : 0.08758                    
##                                                                      
##  TimeBodyGyroscopeJerkMagnitudeSTD() frequencyBodyAccelerometerMean()-X
##  Min.   :-0.9977                     Min.   :-0.9952                   
##  1st Qu.:-0.9805                     1st Qu.:-0.9787                   
##  Median :-0.8809                     Median :-0.7691                   
##  Mean   :-0.7550                     Mean   :-0.5758                   
##  3rd Qu.:-0.5767                     3rd Qu.:-0.2174                   
##  Max.   : 0.2502                     Max.   : 0.5370                   
##                                                                        
##  frequencyBodyAccelerometerMean()-Y frequencyBodyAccelerometerMean()-Z
##  Min.   :-0.98903                   Min.   :-0.9895                   
##  1st Qu.:-0.95361                   1st Qu.:-0.9619                   
##  Median :-0.59498                   Median :-0.7236                   
##  Mean   :-0.48873                   Mean   :-0.6297                   
##  3rd Qu.:-0.06341                   3rd Qu.:-0.3183                   
##  Max.   : 0.52419                   Max.   : 0.2807                   
##                                                                       
##  frequencyBodyAccelerometerSTD()-X frequencyBodyAccelerometerSTD()-Y
##  Min.   :-0.9966                   Min.   :-0.99068                 
##  1st Qu.:-0.9820                   1st Qu.:-0.94042                 
##  Median :-0.7470                   Median :-0.51338                 
##  Mean   :-0.5522                   Mean   :-0.48148                 
##  3rd Qu.:-0.1966                   3rd Qu.:-0.07913                 
##  Max.   : 0.6585                   Max.   : 0.56019                 
##                                                                     
##  frequencyBodyAccelerometerSTD()-Z frequencyBodyAccelerometerMeanFreq()-X
##  Min.   :-0.9872                   Min.   :-0.63591                      
##  1st Qu.:-0.9459                   1st Qu.:-0.39165                      
##  Median :-0.6441                   Median :-0.25731                      
##  Mean   :-0.5824                   Mean   :-0.23227                      
##  3rd Qu.:-0.2655                   3rd Qu.:-0.06105                      
##  Max.   : 0.6871                   Max.   : 0.15912                      
##                                                                          
##  frequencyBodyAccelerometerMeanFreq()-Y
##  Min.   :-0.379518                     
##  1st Qu.:-0.081314                     
##  Median : 0.007855                     
##  Mean   : 0.011529                     
##  3rd Qu.: 0.086281                     
##  Max.   : 0.466528                     
##                                        
##  frequencyBodyAccelerometerMeanFreq()-Z
##  Min.   :-0.52011                      
##  1st Qu.:-0.03629                      
##  Median : 0.06582                      
##  Mean   : 0.04372                      
##  3rd Qu.: 0.17542                      
##  Max.   : 0.40253                      
##                                        
##  frequencyBodyAccelerometerJerkMean()-X
##  Min.   :-0.9946                       
##  1st Qu.:-0.9828                       
##  Median :-0.8126                       
##  Mean   :-0.6139                       
##  3rd Qu.:-0.2820                       
##  Max.   : 0.4743                       
##                                        
##  frequencyBodyAccelerometerJerkMean()-Y
##  Min.   :-0.9894                       
##  1st Qu.:-0.9725                       
##  Median :-0.7817                       
##  Mean   :-0.5882                       
##  3rd Qu.:-0.1963                       
##  Max.   : 0.2767                       
##                                        
##  frequencyBodyAccelerometerJerkMean()-Z
##  Min.   :-0.9920                       
##  1st Qu.:-0.9796                       
##  Median :-0.8707                       
##  Mean   :-0.7144                       
##  3rd Qu.:-0.4697                       
##  Max.   : 0.1578                       
##                                        
##  frequencyBodyAccelerometerJerkSTD()-X
##  Min.   :-0.9951                      
##  1st Qu.:-0.9847                      
##  Median :-0.8254                      
##  Mean   :-0.6121                      
##  3rd Qu.:-0.2475                      
##  Max.   : 0.4768                      
##                                       
##  frequencyBodyAccelerometerJerkSTD()-Y
##  Min.   :-0.9905                      
##  1st Qu.:-0.9737                      
##  Median :-0.7852                      
##  Mean   :-0.5707                      
##  3rd Qu.:-0.1685                      
##  Max.   : 0.3498                      
##                                       
##  frequencyBodyAccelerometerJerkSTD()-Z
##  Min.   :-0.993108                    
##  1st Qu.:-0.983747                    
##  Median :-0.895121                    
##  Mean   :-0.756489                    
##  3rd Qu.:-0.543787                    
##  Max.   :-0.006236                    
##                                       
##  frequencyBodyAccelerometerJerkMeanFreq()-X
##  Min.   :-0.57604                          
##  1st Qu.:-0.28966                          
##  Median :-0.06091                          
##  Mean   :-0.06910                          
##  3rd Qu.: 0.17660                          
##  Max.   : 0.33145                          
##                                            
##  frequencyBodyAccelerometerJerkMeanFreq()-Y
##  Min.   :-0.60197                          
##  1st Qu.:-0.39751                          
##  Median :-0.23209                          
##  Mean   :-0.22810                          
##  3rd Qu.:-0.04721                          
##  Max.   : 0.19568                          
##                                            
##  frequencyBodyAccelerometerJerkMeanFreq()-Z frequencyBodyGyroscopeMean()-X
##  Min.   :-0.62756                           Min.   :-0.9931               
##  1st Qu.:-0.30867                           1st Qu.:-0.9697               
##  Median :-0.09187                           Median :-0.7300               
##  Mean   :-0.13760                           Mean   :-0.6367               
##  3rd Qu.: 0.03858                           3rd Qu.:-0.3387               
##  Max.   : 0.23011                           Max.   : 0.4750               
##                                                                           
##  frequencyBodyGyroscopeMean()-Y frequencyBodyGyroscopeMean()-Z
##  Min.   :-0.9940                Min.   :-0.9860               
##  1st Qu.:-0.9700                1st Qu.:-0.9624               
##  Median :-0.8141                Median :-0.7909               
##  Mean   :-0.6767                Mean   :-0.6044               
##  3rd Qu.:-0.4458                3rd Qu.:-0.2635               
##  Max.   : 0.3288                Max.   : 0.4924               
##                                                               
##  frequencyBodyGyroscopeSTD()-X frequencyBodyGyroscopeSTD()-Y
##  Min.   :-0.9947               Min.   :-0.9944              
##  1st Qu.:-0.9750               1st Qu.:-0.9602              
##  Median :-0.8086               Median :-0.7964              
##  Mean   :-0.7110               Mean   :-0.6454              
##  3rd Qu.:-0.4813               3rd Qu.:-0.4154              
##  Max.   : 0.1966               Max.   : 0.6462              
##                                                             
##  frequencyBodyGyroscopeSTD()-Z frequencyBodyGyroscopeMeanFreq()-X
##  Min.   :-0.9867               Min.   :-0.395770                 
##  1st Qu.:-0.9643               1st Qu.:-0.213363                 
##  Median :-0.8224               Median :-0.115527                 
##  Mean   :-0.6577               Mean   :-0.104551                 
##  3rd Qu.:-0.3916               3rd Qu.: 0.002655                 
##  Max.   : 0.5225               Max.   : 0.249209                 
##                                                                  
##  frequencyBodyGyroscopeMeanFreq()-Y frequencyBodyGyroscopeMeanFreq()-Z
##  Min.   :-0.66681                   Min.   :-0.50749                  
##  1st Qu.:-0.29433                   1st Qu.:-0.15481                  
##  Median :-0.15794                   Median :-0.05081                  
##  Mean   :-0.16741                   Mean   :-0.05718                  
##  3rd Qu.:-0.04269                   3rd Qu.: 0.04152                  
##  Max.   : 0.27314                   Max.   : 0.37707                  
##                                                                       
##  frequencyBodyAccelerometerMagnitudeMean()
##  Min.   :-0.9868                          
##  1st Qu.:-0.9560                          
##  Median :-0.6703                          
##  Mean   :-0.5365                          
##  3rd Qu.:-0.1622                          
##  Max.   : 0.5866                          
##                                           
##  frequencyBodyAccelerometerMagnitudeSTD()
##  Min.   :-0.9876                         
##  1st Qu.:-0.9452                         
##  Median :-0.6513                         
##  Mean   :-0.6210                         
##  3rd Qu.:-0.3654                         
##  Max.   : 0.1787                         
##                                          
##  frequencyBodyAccelerometerMagnitudeMeanFreq()
##  Min.   :-0.31234                             
##  1st Qu.:-0.01475                             
##  Median : 0.08132                             
##  Mean   : 0.07613                             
##  3rd Qu.: 0.17436                             
##  Max.   : 0.43585                             
##                                               
##  frequencyBodyAccelerometerJerkMagnitudeMean()
##  Min.   :-0.9940                              
##  1st Qu.:-0.9770                              
##  Median :-0.7940                              
##  Mean   :-0.5756                              
##  3rd Qu.:-0.1872                              
##  Max.   : 0.5384                              
##                                               
##  frequencyBodyAccelerometerJerkMagnitudeSTD()
##  Min.   :-0.9944                             
##  1st Qu.:-0.9752                             
##  Median :-0.8126                             
##  Mean   :-0.5992                             
##  3rd Qu.:-0.2668                             
##  Max.   : 0.3163                             
##                                              
##  frequencyBodyAccelerometerJerkMagnitudeMeanFreq()
##  Min.   :-0.12521                                 
##  1st Qu.: 0.04527                                 
##  Median : 0.17198                                 
##  Mean   : 0.16255                                 
##  3rd Qu.: 0.27593                                 
##  Max.   : 0.48809                                 
##                                                   
##  frequencyBodyGyroscopeMagnitudeMean()
##  Min.   :-0.9865                      
##  1st Qu.:-0.9616                      
##  Median :-0.7657                      
##  Mean   :-0.6671                      
##  3rd Qu.:-0.4087                      
##  Max.   : 0.2040                      
##                                       
##  frequencyBodyGyroscopeMagnitudeSTD()
##  Min.   :-0.9815                     
##  1st Qu.:-0.9488                     
##  Median :-0.7727                     
##  Mean   :-0.6723                     
##  3rd Qu.:-0.4277                     
##  Max.   : 0.2367                     
##                                      
##  frequencyBodyGyroscopeMagnitudeMeanFreq()
##  Min.   :-0.45664                         
##  1st Qu.:-0.16951                         
##  Median :-0.05352                         
##  Mean   :-0.03603                         
##  3rd Qu.: 0.08228                         
##  Max.   : 0.40952                         
##                                           
##  frequencyBodyGyroscopeJerkMagnitudeMean()
##  Min.   :-0.9976                          
##  1st Qu.:-0.9813                          
##  Median :-0.8779                          
##  Mean   :-0.7564                          
##  3rd Qu.:-0.5831                          
##  Max.   : 0.1466                          
##                                           
##  frequencyBodyGyroscopeJerkMagnitudeSTD()
##  Min.   :-0.9976                         
##  1st Qu.:-0.9802                         
##  Median :-0.8941                         
##  Mean   :-0.7715                         
##  3rd Qu.:-0.6081                         
##  Max.   : 0.2878                         
##                                          
##  frequencyBodyGyroscopeJerkMagnitudeMeanFreq()
##  Min.   :-0.18292                             
##  1st Qu.: 0.05423                             
##  Median : 0.11156                             
##  Mean   : 0.12592                             
##  3rd Qu.: 0.20805                             
##  Max.   : 0.42630                             
##                                               
##  angle(tBodyAccelerometerMean,gravity)
##  Min.   :-0.163043                    
##  1st Qu.:-0.011012                    
##  Median : 0.007878                    
##  Mean   : 0.006556                    
##  3rd Qu.: 0.024393                    
##  Max.   : 0.129154                    
##                                       
##  angle(tBodyAccelerometerJerkMean),gravityMean)
##  Min.   :-0.1205540                            
##  1st Qu.:-0.0211694                            
##  Median : 0.0031358                            
##  Mean   : 0.0006439                            
##  3rd Qu.: 0.0220881                            
##  Max.   : 0.2032600                            
##                                                
##  angle(tBodyGyroscopeMean,gravityMean)
##  Min.   :-0.38931                     
##  1st Qu.:-0.01977                     
##  Median : 0.02087                     
##  Mean   : 0.02193                     
##  3rd Qu.: 0.06460                     
##  Max.   : 0.44410                     
##                                       
##  angle(tBodyGyroscopeJerkMean,gravityMean) angle(X,gravityMean)
##  Min.   :-0.22367                          Min.   :-0.9471     
##  1st Qu.:-0.05613                          1st Qu.:-0.7907     
##  Median :-0.01602                          Median :-0.7377     
##  Mean   :-0.01137                          Mean   :-0.5243     
##  3rd Qu.: 0.03200                          3rd Qu.:-0.5823     
##  Max.   : 0.18238                          Max.   : 0.7378     
##                                                                
##  angle(Y,gravityMean) angle(Z,gravityMean)
##  Min.   :-0.87457     Min.   :-0.873649   
##  1st Qu.: 0.02191     1st Qu.:-0.083912   
##  Median : 0.17136     Median : 0.005079   
##  Mean   : 0.07865     Mean   :-0.040436   
##  3rd Qu.: 0.24343     3rd Qu.: 0.106190   
##  Max.   : 0.42476     Max.   : 0.390444   
## 
```
