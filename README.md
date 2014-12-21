
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
* **tidyDataSet.txt**: The tidy subset of the UCI HAR data set
* [**CodeBook.md**:] (https://github.com/jeremyshantz/Tidy-Data-Analysis-Human-Activity-Recognition-Using-Smartphones-/blob/master/CodeBook.md) Information about all columns in the data set
* **README.md**: This document which describes the study and the summary choices.
* **run_analysis.R**: Source code in R for our transformation of the UCI HAR data set into our tidy data set.


### The instruction list 
Read the metrics labels and actvity labels.


R script ..
set the wd
including downloading in the script
input is raw data
output is tidy data
no parameters to the script
if you can't script some steps, document them
    Step 1: take the raw file and run software version x on it with paramters a =1
	etc

### Reading the data
Read the tidy data set in R with the following command. First ensure the working directory contains the tidyDataSet.txt file. (On Windows, you may need to adjust the path slightly.)

```R
read.table('./tidyDataSet.txt', header = TRUE)
```