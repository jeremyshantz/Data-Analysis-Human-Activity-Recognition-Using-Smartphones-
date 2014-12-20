
I was able to follow the README in the directory that explained what the analysis files did. 

Was code book submitted to GitHub that modifies and updates the codebooks available to you with the data to indicate all the variables and summaries you calculated, along with units, and any other relevant information?

# Tidy Data Analysis of "Human Activity Recognition Using Smartphones"

This data set is a tidy subset of the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Reference
We acknowledged our use of the UCI HAR dataset:

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### The dataset includes the following files
* **tidyDataSet.txt**: The tidy subset of the UCI HAR setset
* **CodeBook.md**: Information about all columns in the data set
* **README.md**: This document which describes the study.
* **run_analysis.R**: Source code in R for our transformation of the UCI HAR dataset into our tidy data set.

### Original Study Design

The UCI HAR data set, upon which our study is based, contains the following description of how the original study was conducted (from its readme.txt):

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


### Tidy Data Study

#### Recombining the original data set
We downloaded the UCI HAR data set on 2014-12-20. Since the data set is spread over a number of separate files, it was necessary to reassemble the data set. We combined the subjects, the observations, and the list of activities [using the files subject_*.txt, X_*.txt, and y_*.txt] into a single data.frame, then applied the column names and factored the activity column using the provided activity labels (the features.txt and activity_labels.txt files). We repeated this for both the train and test subsets and then combined the subsets into a final data.frame.

This recombination produces a data set with a number of characterics of tidy data. Each observation is in a single row. Each variable is in a single column. Also, since the train and test subsets are merely subsets of the same kind of data, it is appropriate to combine them into a single table.

#### Removing some columns
To produce the designed subset of only mean and std variables, we removed all columns where the original name did not contain -std or -mean. This method deliberately excludes a number of columns with 'mean' in the name because they are not actually mean values. This includes variables containing "meanFreq" and the variables which begin with "angle." We also retained the subject and activity columns.

#### Tidying up the column names
explain why the names are descriptive
human readable

#### Summarizing the data
information about the summary choices you made

### The instruction list 
R script 
set the wd
including downloading in the script
input is raw data
output is tidy data
no parameters to the script
if you can't script some steps, document them
    Step 1: take the raw file and run software version x on it with paramters a =1
	etc

### Reading the data
Read the tidy data set in R with the following command. First ensure the working directory contains the tidyDataSet.txt file.

```R
read.table('./tidyDataSet.txt', header = TRUE)
```