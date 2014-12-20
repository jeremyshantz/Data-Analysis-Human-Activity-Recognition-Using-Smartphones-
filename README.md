Was code book submitted to GitHub that modifies and updates the codebooks available to you with the data to indicate all the variables and summaries you calculated, along with units, and any other relevant information?



I was able to follow the README in the directory that explained what the analysis files did. 

Data-Analysis-Human-Activity-Recognition-Using-Smartphones
==========================================================

This data set is a 
Analysis of the "Human Activity Recognition Using Smartphones" data set from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  


## Study Design
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




