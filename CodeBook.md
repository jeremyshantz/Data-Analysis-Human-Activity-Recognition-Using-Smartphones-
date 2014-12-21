## Code book

The tidy data set consists of a subset of the fields from the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

All of the measurements below are of the mean for each combination of subject and activity.

Our variable names are free from duplicates, provide meaningful and expanded prefixes, and contain no illegal characters. Our variables names are lowercase, but we chose to use periods in variable names to separate the components since the combination of lowercase and no periods produces hard-to-read variable names which we do not consider "tidy." eg. meanfrequencybodygyromeany vs mean.frequency.bodygyro.mean.y

The UCI HAR data set's codebook (features_info.txt) describes the original variables this way:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### The variables

* **subject**
  * integer. 1 to 30. The identifier of the study subject.
* **activity**
  * character. The physical activity in which the subject was engaged at the time of the observation. 
    1. WALKING 
    2. WALKING_UPSTAIRS 
    3. WALKING_DOWNSTAIRS 
    4. SITTING 
    5. STANDING 
    6. LAYING
* **mean.time.bodyacc.mean.x**
	* number. The mean of the tBodyAcc-mean()-X variable from the UCI HAL data set
* **mean.time.bodyacc.mean.y**
	* number. The mean of the tBodyAcc-mean()-Y variable from the UCI HAL data set
* **mean.time.bodyacc.mean.z**
	* number. The mean of the tBodyAcc-mean()-Z variable from the UCI HAL data set
* **mean.time.bodyacc.std.x**
	* number. The mean of the tBodyAcc-std()-X variable from the UCI HAL data set
* **mean.time.bodyacc.std.y**
	* number. The mean of the tBodyAcc-std()-Y variable from the UCI HAL data set
* **mean.time.bodyacc.std.z**
	* number. The mean of the tBodyAcc-std()-Z variable from the UCI HAL data set
* **mean.time.gravityacc.mean.x**
	* number. The mean of the tGravityAcc-mean()-X variable from the UCI HAL data set
* **mean.time.gravityacc.mean.y**
	* number. The mean of the tGravityAcc-mean()-Y variable from the UCI HAL data set
* **mean.time.gravityacc.mean.z**
	* number. The mean of the tGravityAcc-mean()-Z variable from the UCI HAL data set
* **mean.time.gravityacc.std.x**
	* number. The mean of the tGravityAcc-std()-X variable from the UCI HAL data set
* **mean.time.gravityacc.std.y**
	* number. The mean of the tGravityAcc-std()-Y variable from the UCI HAL data set
* **mean.time.gravityacc.std.z**
	* number. The mean of the tGravityAcc-std()-Z variable from the UCI HAL data set
* **mean.time.bodyaccjerk.mean.x**
	* number. The mean of the tBodyAccJerk-mean()-X variable from the UCI HAL data set
* **mean.time.bodyaccjerk.mean.y**
	* number. The mean of the tBodyAccJerk-mean()-Y variable from the UCI HAL data set
* **mean.time.bodyaccjerk.mean.z**
	* number. The mean of the tBodyAccJerk-mean()-Z variable from the UCI HAL data set
* **mean.time.bodyaccjerk.std.x**
	* number. The mean of the tBodyAccJerk-std()-X variable from the UCI HAL data set
* **mean.time.bodyaccjerk.std.y**
	* number. The mean of the tBodyAccJerk-std()-Y variable from the UCI HAL data set
* **mean.time.bodyaccjerk.std.z**
	* number. The mean of the tBodyAccJerk-std()-Z variable from the UCI HAL data set
* **mean.time.bodygyro.mean.x**
	* number. The mean of the tBodyGyro-mean()-X variable from the UCI HAL data set
* **mean.time.bodygyro.mean.y**
	* number. The mean of the tBodyGyro-mean()-Y variable from the UCI HAL data set
* **mean.time.bodygyro.mean.z**
	* number. The mean of the tBodyGyro-mean()-Z variable from the UCI HAL data set
* **mean.time.bodygyro.std.x**
	* number. The mean of the tBodyGyro-std()-X variable from the UCI HAL data set
* **mean.time.bodygyro.std.y**
	* number. The mean of the tBodyGyro-std()-Y variable from the UCI HAL data set
* **mean.time.bodygyro.std.z**
	* number. The mean of the tBodyGyro-std()-Z variable from the UCI HAL data set
* **mean.time.bodygyrojerk.mean.x**
	* number. The mean of the tBodyGyroJerk-mean()-X variable from the UCI HAL data set
* **mean.time.bodygyrojerk.mean.y**
	* number. The mean of the tBodyGyroJerk-mean()-Y variable from the UCI HAL data set
* **mean.time.bodygyrojerk.mean.z**
	* number. The mean of the tBodyGyroJerk-mean()-Z variable from the UCI HAL data set
* **mean.time.bodygyrojerk.std.x**
	* number. The mean of the tBodyGyroJerk-std()-X variable from the UCI HAL data set
* **mean.time.bodygyrojerk.std.y**
	* number. The mean of the tBodyGyroJerk-std()-Y variable from the UCI HAL data set
* **mean.time.bodygyrojerk.std.z**
	* number. The mean of the tBodyGyroJerk-std()-Z variable from the UCI HAL data set
* **mean.time.bodyaccmag.mean**
	* number. The mean of the tBodyAccMag-mean() variable from the UCI HAL data set
* **mean.time.bodyaccmag.std**
	* number. The mean of the tBodyAccMag-std() variable from the UCI HAL data set
* **mean.time.gravityaccmag.mean**
	* number. The mean of the tGravityAccMag-mean() variable from the UCI HAL data set
* **mean.time.gravityaccmag.std**
	* number. The mean of the tGravityAccMag-std() variable from the UCI HAL data set
* **mean.time.bodyaccjerkmag.mean**
	* number. The mean of the tBodyAccJerkMag-mean() variable from the UCI HAL data set
* **mean.time.bodyaccjerkmag.std**
	* number. The mean of the tBodyAccJerkMag-std() variable from the UCI HAL data set
* **mean.time.bodygyromag.mean**
	* number. The mean of the tBodyGyroMag-mean() variable from the UCI HAL data set
* **mean.time.bodygyromag.std**
	* number. The mean of the tBodyGyroMag-std() variable from the UCI HAL data set
* **mean.time.bodygyrojerkmag.mean**
	* number. The mean of the tBodyGyroJerkMag-mean() variable from the UCI HAL data set
* **mean.time.bodygyrojerkmag.std**
	* number. The mean of the tBodyGyroJerkMag-std() variable from the UCI HAL data set
* **mean.frequency.bodyacc.mean.x**
	* number. The mean of the fBodyAcc-mean()-X variable from the UCI HAL data set
* **mean.frequency.bodyacc.mean.y**
	* number. The mean of the fBodyAcc-mean()-Y variable from the UCI HAL data set
* **mean.frequency.bodyacc.mean.z**
	* number. The mean of the fBodyAcc-mean()-Z variable from the UCI HAL data set
* **mean.frequency.bodyacc.std.x**
	* number. The mean of the fBodyAcc-std()-X variable from the UCI HAL data set
* **mean.frequency.bodyacc.std.y**
	* number. The mean of the fBodyAcc-std()-Y variable from the UCI HAL data set
* **mean.frequency.bodyacc.std.z**
	* number. The mean of the fBodyAcc-std()-Z variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.mean.x**
	* number. The mean of the fBodyAccJerk-mean()-X variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.mean.y**
	* number. The mean of the fBodyAccJerk-mean()-Y variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.mean.z**
	* number. The mean of the fBodyAccJerk-mean()-Z variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.std.x**
	* number. The mean of the fBodyAccJerk-std()-X variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.std.y**
	* number. The mean of the fBodyAccJerk-std()-Y variable from the UCI HAL data set
* **mean.frequency.bodyaccjerk.std.z**
	* number. The mean of the fBodyAccJerk-std()-Z variable from the UCI HAL data set
* **mean.frequency.bodygyro.mean.x**
	* number. The mean of the fBodyGyro-mean()-X variable from the UCI HAL data set
* **mean.frequency.bodygyro.mean.y**
	* number. The mean of the fBodyGyro-mean()-Y variable from the UCI HAL data set
* **mean.frequency.bodygyro.mean.z**
	* number. The mean of the fBodyGyro-mean()-Z variable from the UCI HAL data set
* **mean.frequency.bodygyro.std.x**
	* number. The mean of the fBodyGyro-std()-X variable from the UCI HAL data set
* **mean.frequency.bodygyro.std.y**
	* number. The mean of the fBodyGyro-std()-Y variable from the UCI HAL data set
* **mean.frequency.bodygyro.std.z**
	* number. The mean of the fBodyGyro-std()-Z variable from the UCI HAL data set
* **mean.frequency.bodyaccmag.mean**
	* number. The mean of the fBodyAccMag-mean() variable from the UCI HAL data set
* **mean.frequency.bodyaccmag.std**
	* number. The mean of the fBodyAccMag-std() variable from the UCI HAL data set
* **mean.frequency.bodyaccjerkmag.mean**
	* number. The mean of the fBodyBodyAccJerkMag-mean() variable from the UCI HAL data set
* **mean.frequency.bodyaccjerkmag.std**
	* number. The mean of the fBodyBodyAccJerkMag-std() variable from the UCI HAL data set
* **mean.frequency.bodygyromag.mean**
	* number. The mean of the fBodyBodyGyroMag-mean() variable from the UCI HAL data set
* **mean.frequency.bodygyromag.std**
	* number. The mean of the fBodyBodyGyroMag-std() variable from the UCI HAL data set
* **mean.frequency.bodygyrojerkmag.mean**
	* number. The mean of the fBodyBodyGyroJerkMag-mean() variable from the UCI HAL data set
* **mean.frequency.bodygyrojerkmag.std**
	* number. The mean of the fBodyBodyGyroJerkMag-std() variable from the UCI HAL data set
