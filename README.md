
I was able to follow the README in the directory that explained what the analysis files did. 

Was code book submitted to GitHub that modifies and updates the codebooks available to you with the data to indicate all the variables and summaries you calculated, along with units, and any other relevant information?

# Tidy Data Analysis of "Human Activity Recognition Using Smartphones"

This data set is a tidy subset of the ["Human Activity Recognition Using Smartphones" data set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Reference
We acknowledged our use of the UCI HAR dataset with the following reference:

> [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

> This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

> Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

### The dataset includes the following files
* tidyDataSet.txt: The tidy subset of the UCI HAR setset
* CodeBook.md: Information about all columns in the data set
* README.md: This document which describes the study.
* run_analysis.R: Source code in R for our transformation of the UCI HAR dataset into our tidy data set.



### Study Design
a thorough description of how you collected the data
data downloaded on date time

information about the summary choices you made


#### The instruction list 
R script 
set the wd
including downloading in the script
input is raw data
output is tidy data
no parameters to the script
if you can't script some steps, document them
    Step 1: take the raw file and run software version x on it with paramters a =1
	etc



, make it clear to people reviewing it why it is tidy. When you given the variables descriptive names, explain why the names are descriptive. Don't give your reviewers the opportunity to be confused about your work, spell it out to them.


    what columns are measurements on the mean and standard deviation

Based on column names in the features is an open question as to is the the entries that include mean() and std() at the end, or does it include entries with mean in an earlier part of the name as well. There are no specific marking critieria on the number of columns. It is up to you to make a decision and explain what you did to the data. Make it easy for people to give you marks by explaining your reasoning.
   Please note that I rejected measurements based on  meanFreq.  e.g. I keep fBodyAccMag-mean, but reject fBodyAccMag-meanFreq.
there is some features names that contain "mean" but in fact are not kind of mean values but angles values like this one for example: angle(tBodyAccMean,gravity)


Reading the data

  data <- read.table(path, header = TRUE)
    View(data)
    
    
delete
t - each combination of activity, subject, and variable should be represented in the tidy data as an entry.




