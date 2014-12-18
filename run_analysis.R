## Getting and cleaning data
## Course Project

# This R script run_analysis.R does the following:
# 1 Merges the training and the test sets to create one data set.
# 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3 Uses descriptive activity names to name the activities in the data set
# 4 Appropriately labels the data set with descriptive variable names. 
# 5 From the data set in step 4, creates a second, independent tidy data set with the average 
#   of each variable for each activity and each subject.

## 1 Merges the training and the test sets to create one data set.
# Read features file to use the names
features <- read.table(".\\UCI HAR Dataset\\features.txt")
activity_labels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")
names(activity_labels) <- c("id","activity")

# Read training set data 
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
# Name the variables of X_train with the names extracted from features file
names(x_train) <- features[,2]
# Read training labels 
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt")
names(y_train) <- c("id")

# 3 Uses descriptive activity names to name the activities in the data set
# Convert training numerical labels in text labels to be used as factors
# using join function of plyr library
library(plyr)
y_train_label <- join(y_train, activity_labels, by="id")

# Read subject id from file subject_train
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
names(subject_train) <- c("subjectid")

# Make one data frame with three columns: activity, subjectid and data
train <- data.frame(y_train_label, subject_train, x_train) 

# Read test set data 
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
# Name the variables of X_test with the names extracted from features file
names(x_test) <- features[,2]
# Read training labels 
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt")
names(y_test) <- c("id")

# 3 Uses descriptive activity names to name the activities in the data set
# Convert training numerical labels in text labels to be used as factors
# using join function of plyr library
y_test_label <- join(y_test, activity_labels, by="id")

# Read subject id from fiel subject_train
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
names(subject_test) <- c("subjectid")

# Make one data frame with three columns: activity, subjectid and data
test <- data.frame(y_test_label, subject_test, x_test) 

# Merges the training and the test sets to create one data set
all_data <- rbind(train, test)

# 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
selected_data2 <- data.frame(all_data[,2:3], all_data[,grepl("mean|std", colnames(all_data))])

library(dplyr)
# 5 From the data set in step 4, creates a second, independent tidy data set with the average 
#   of each variable for each activity and each subject.
selected_data3 <- tbl_df(selected_data2)
by_activity <- group_by(selected_data3, activity, subjectid)                                                  
mean_all2 <- summarise_each(by_activity, funs(mean))

# 4 Appropriately labels the data set with descriptive variable names. 
names(mean_all2) <- gsub("Acc", "Acceleration", names(mean_all2))
names(mean_all2) <- gsub("Freq", "Frequency", names(mean_all2))
names(mean_all2) <- gsub("\\.", "", names(mean_all2))
names(mean_all2) <- gsub("mean", "Mean", names(mean_all2))
names(mean_all2) <- gsub("std", "Std", names(mean_all2))
names(mean_all2) <- gsub("BodyBody", "Body", names(mean_all2))

# Save the Data set in a dataset.txt file
write.table(mean_all2, file = "dataset.txt", sep = " ", row.names = FALSE)
# Check that the data set is readable and usable from the file
dataset <- read.table("dataset.txt", header = TRUE, sep = " ")
