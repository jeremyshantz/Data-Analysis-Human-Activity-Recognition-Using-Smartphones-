
# Download data


metricLabels <- read.table('./features.txt')
activityLabels <- read.table('./activity_labels.txt')

subjects <- read.table('./train/subject_train.txt')
activities <- read.table('./train/y_train.txt')
metrics <- read.table('./train/X_train.txt')

names(metrics) <- metricLabels[, 2]

data <- cbind(subjects, activities)
names(data) <- c('subject', 'activity')

data <- cbind(data, metrics)
View(data)