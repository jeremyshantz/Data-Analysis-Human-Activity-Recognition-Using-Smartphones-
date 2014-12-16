
# Creates a tidy data set from the UCI HAR Dataset by doing the following:
  #
  # Merges the training and the test sets to create one data set.
  # Extracts only the measurements on the mean and standard deviation for each measurement. 
  # Uses descriptive activity names to name the activities in the data set
  # Appropriately labels the data set with descriptive variable names. 
  # From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  #
  # A note about cross-platform compatibility
  # This code runs correctly on Ubuntu 14. I have taken some care to ensure it will work cross-platform, but that is not guaranteed.
  # Problemmatic areas may include tilde path expansion in resolving working.directory.path, and the method = "curl" parameter to download.file. 

# dplyr library is used to group and summarize the data set; install if not available
if (!require('dplyr')) packages.install('dplyr'); library('dplyr')

# Remote source for the data set; it will be downloaded if necessary
dataset.url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'

# Our working directory; it will be created it necessary
working.directory.path <- file.path(path.expand('~'), 'getdata-016-project')

# The name of the directory which holds the data set; a subfolder of working.directory.path
data.directory.name <- 'UCI HAR Dataset'

CleanVariableName <- function (var) {
    # A method which Appropriately labels the data set with descriptive variable names.  
    # Tidies up variable names by removing illegal characters and expanding the prefix to make them more readable
    #
    # Args:
    #   var: string containing the original variable name
    #
    # Returns:
    #   A string containing the cleaned variable name
    
    # Remove parentheses and hyphens
    var <- gsub('[(]', '', var)
    var <- gsub('[)]', '', var)
    var <- gsub('[-]', '.', var)
    
    # Add a human-readable prefix by converting 't' to 'time' and 'f' to 'frequency'
    prefix <- 'time'
    if (substr(var, 1, 1) == 'f') {
        prefix <- 'frequency'    
    }
    
    # Remove the first character, since we're replacing it with the prefix
    var <- substring(var, 2)
    
    # Concatenate the prefix and variable name
    return(paste(prefix, var, sep = '.'))
}

LoadDataSet <- function (set) {
    # Loads the train or test data set from disk into a data.frame; filters and names the columns according to requirements
    #
    # Args:
    #   set: string equal to 'train' or 'test'
    #
    # Returns:
    #   A data.frame
    
    # Create the base path based on the data set we are loading
    path = file.path(getwd(), data.directory.name, set)
    
    # Load data from disk
    subjects <- read.table(file.path(path, paste('subject_', set, '.txt', sep = '')))
    activities <- read.table(file.path(path, paste('y_', set, '.txt', sep = '')))
    metrics <- read.table(file.path(path, paste('X_', set, '.txt', sep = '')))
    
    # Appropriately labels the data set with descriptive variable names. 
    metric.labels <- sapply(metric.labels, CleanVariableName)
    names(metrics) <- metric.labels
    
    # Extracts only the measurements on the mean and standard deviation for each measurement. 
    #   .meanFreq and angle(*Mean*) are excluded because they are not measurements on the mean
    columnIndexes = sapply(metric.labels, function(colname){ grepl(colname,  pattern = ".std") | (grepl(colname,  pattern = ".mean") & !grepl(colname,  pattern = ".meanFreq")) })
    metrics <- metrics[, columnIndexes]

    # Bind subject and activities, then bind metrics
    data <- cbind(subjects, activities)
    names(data) <- c('subject', 'activity')
    data <- cbind(data, metrics)
    
    # Clean up some variables to free up memory
    remove(activities)
    remove(metrics)
    remove(subjects)
    
    # Return the data set
    data
}
 
SetWorkingDirectory <- function () {
    # Sets the working directory, first creating it if necessary
    #
    # Args:
    #   none
    #
    # Returns:
    #   NULL
    
    # Create the working directory folder if it does not exist
    if(!file.exists(working.directory.path)) {
        dir.create(working.directory.path)
    }

    # Error out if the folder still does not exist, something is wrong, we cannot proceed
    if(!file.exists(working.directory.path)) {
        stop('Unable to establish working directory')    
    }
    
    # Set the working directory
    setwd(working.directory.path)
}

DownloadDataIfNecessary <- function () {
    # Downloads the UCI HAR dataset if we don't already have it locally
    #
    # Args:
    #   none
    #
    # Returns:
    #   NULL
    
    datapath <- file.path(working.directory.path, data.directory.name)
    
    # For our purposes, we'll assume if the UCI subfolder exists, the complete data set is there
    if (file.exists(datapath)) {
        return(NULL)
    }
    
    # Download and unzip the data set
    message('Downloading the data set; this may take a few moments.....')
    tmp <- tempfile()    
    download.file(dataset.url, tmp, method = "curl", cacheOK = TRUE)
    unzip(tmp)
    unlink(tmp)
    
    # If the data folder still does not exist, something is wrong, we cannot proceed
    if (!file.exists(datapath)) {
         stop('Unable to acquire data')
    }
}

# Set up working environment and data set
SetWorkingDirectory()
DownloadDataIfNecessary()

# Load labels from disk
metric.labels <- read.table(file.path(getwd(), data.directory.name, 'features.txt'))[, 2]
activity.labels <- as.character(read.table(file.path(getwd(), data.directory.name, 'activity_labels.txt'))[, 2])

# Merges the training and the test sets to create one data set.
message('Reading data.....')
data <- rbind(LoadDataSet('train'), LoadDataSet('test'))

# Uses descriptive activity names to name the activities in the data set 
# Sort by activity so we can factor activities and apply the labels given in the dataset
data <- data[order(data[,2]), ]
data[,2] <- factor(data[,2], labels = activity.labels)

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
grouped.data <- group_by(data, subject, activity)
summarized.data <- summarise_each(grouped.data, funs(mean))

# Output data to disk in fulfillment of: upload your data set as a txt file created with write.table() using row.name=FALSE
write.table(summarized.data, row.name=FALSE, file='./tidyDataSet.txt')
message('Done')
